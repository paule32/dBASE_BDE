// ---------------------------------------------------------------------
// diss.cc - (c) 2022 by Jens Kallup - paule32
//           all rights reserved.
// ---------------------------------------------------------------------

// ---------------------------------------------------------------------
// standard c header
// ---------------------------------------------------------------------
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <stdint.h>

// ---------------------------------------------------------------------
// c++ header
// ---------------------------------------------------------------------
# include <iostream>
# include <vector>
# include <map>
# include <sstream>
# include <exception>

# include <type_traits>

# include <windows.h>

// ---------------------------------------------------------------------
// asmjit header
// ---------------------------------------------------------------------
# include "../x86.h"

// ---------------------------------------------------------------------
// namespace placeholder.
// ---------------------------------------------------------------------
using namespace asmjit;
using namespace x86;
using namespace std;

// ---------------------------------------------------------------------
// placeholder for multilple use.
// ---------------------------------------------------------------------
static constexpr const char*  BorlDOS    = "BorlandDOS.dll";
static constexpr const char*  BorlVCL    = "BorlandVCL.dll";

static constexpr const char*  op_unknown = "unknown opcode";
static constexpr const char*  op_aa      = "Ascii Adjust for ";
static constexpr const char*  op_db      = "\tdb 0x%02x";

static FILE*    hFile;        // input handle (file)
static bool     ThrowOnError; // enable exception handling ?

static bool     isError;      // error flag
static uint8_t  opByte;       // current byte
static char*    buffer;       // temp. string buffer

// ---------------------------------------------------------------------
// Exception classes.
// ---------------------------------------------------------------------
class EUnknownOpCode        : public exception { };
class EDOSdllModuleNotLoaded: public exception { };

// ---------------------------------------------------------------------
// source code stuff.
// ---------------------------------------------------------------------
static stringstream ErrorLog;  // error string holder
static stringstream sa;        // code holder

// ---------------------------------------------------------------------
// BorlandDOS:
// ---------------------------------------------------------------------
class BorlandDOS {
private:
    HMODULE _dll;
public:
    BorlandDOS(void);
   ~BorlandDOS();

    void Init();
    void Run ();
    void Done();
};
static BorlandDOS* BorlandDOS_ExceptionClass;

// ---------------------------------------------------------------------
// external DLL function's.
// ---------------------------------------------------------------------
extern "C" void __stdcall BorlandDOS_Init(void);
extern "C" void __stdcall BorlandDOS_Run (void);
extern "C" void __stdcall BorlandDOS_Done(void);

BorlandDOS::BorlandDOS(void) {
    Init();
    Run ();
    Done();
}
void BorlandDOS::Init(void) {
    BorlandDOS_Init();
}
void BorlandDOS::Run(void) {
    BorlandDOS_Run();
}
void BorlandDOS::Done(void) {
    BorlandDOS_Done();
}

BorlandDOS::~BorlandDOS(void)
{
    FreeLibrary(_dll);
}

// ---------------------------------------------------------------------
// @brief  "debug<Assembler> foo;" or: "debug<Compiler> foo;"
// ---------------------------------------------------------------------
template <class T> class debug: public T {
private:
    StringLogger _sl;    // code holder log
    JitRuntime   _rt;    // base
    CodeHolder   _ch;    // Assembler/Compiler code
    Assembler    _as;    // Assembler
    Compiler     _cc;    // Compiler
    Builder      _cb;    // Builder
    std::string  _fn;    // output file name
    int          _io;    // output handle
public:
    debug(std::string fileName);
    debug(int ioHandle);
    debug(void);
   ~debug();
};

template <class T> debug<T>::debug(std::string fileName)
{
    if (!is_same<T, Assembler>::value
    ||  !is_same<T, Compiler >::value) {
        cout << "template class must be 'BorlandDOS' "
             << "or 'BorlandVCL'."
             << endl;
        return;
    }
cout << "ssss" << endl;
    _ch.init(_rt.environment());
    _ch.setLogger(&_sl);
}

template <> debug<BorlandDOS>:: debug(int ioHandle) { }
template <> debug<BorlandDOS>:: debug(void) { cout << "voider" << endl; }
template <> debug<BorlandDOS>::~debug() { }

// ---------------------------------------------------------------------
// @brief   read a "byte" character from file handle "hFile".
// @return  TRUE  - byte is >= 1
//          FALSE - byte is <= 0
// ---------------------------------------------------------------------
bool readByte()
{
    isError = false;

    if (fread(&opByte,1,1,hFile) < 1) {
        ErrorLog << "fread: no more data." << endl;
        isError = true;
    }
    if (opByte == EOF) {
        ErrorLog << "EOF reached." << endl;
        isError = true;
    }
    return isError;
}

// ---------------------------------------------------------------------
// @brief  emit code to stdout.
// ---------------------------------------------------------------------
void emit(const char* code, const char* name = "", const char* rem = "")
{
    sprintf(buffer,"\t%-24s; %s%s", code, name, rem);
    sa  <<  buffer << endl;
    isError = false;
}

// ---------------------------------------------------------------------
// @brief  emit code to stdout. if "ThrowOnError" is TRUE, a exception
//         will be thrown; else, on FALSE -> emit without exception.
// ---------------------------------------------------------------------
void emit_throw(const char* code, const char* msg = "")
{
    emit(code,msg);
    if (ThrowOnError) {
        throw EUnknownOpCode();
    }
}

// ---------------------------------------------------------------------
// @brief  program entry point.
// ---------------------------------------------------------------------
int main(int argc, char **argv)
{
    int result = 0;
    if (argc < 2) {
        cout << "usage: diss.exe <file>" << endl;
        return 1;
    }
    
    if (!(hFile = fopen(argv[1],"rb"))) {
        cout << "file: " << argv[1]
             << " could not open for read."
             << endl;
        return 1;
    }
    fseek(hFile,0,SEEK_SET);
    
    int8_t fc = 0;
    buffer    = new char[200];

    debug< BorlandDOS > ui_DOS;

    try {
    while (true) {
        if (readByte())
        break;
        switch (opByte) {
            // --------------------------
            // ADC AL, ib
            // --------------------------
            case 0x14: {
                if (readByte())
                break;
                sprintf(buffer,"adc\tal, 0x%02x",opByte);
                emit(buffer,"Add With Carry");
            }
            break;
            // --------------------------
            // ADC AX, iw
            // --------------------------
            case 0x15: {
                uint8_t byte_0; if (readByte()) break; byte_0 = opByte;
                uint8_t byte_1; if (readByte()) break; byte_1 = opByte;
                
                sprintf(buffer,"\tadc\tax, 0x%02x%02x",
                byte_0,byte_1);
                emit(buffer);
            }
            break;
            // --------------------------
            // AAA
            // --------------------------
            case 0x37: {
                emit("aaa", op_aa,
                "Addition");
            }
            break;
            // --------------------------
            // AAS
            // --------------------------
            case 0x3f: {
                emit("aas", op_aa,
                "Subtraction");
            }
            break;
            // --------------------------
            // AAM
            // --------------------------
            case 0xd4: {
                if (readByte())
                break;
                switch (opByte) {
                    case 0x0a: {
                        emit("aam", op_aa,
                        "Multiplication");
                    }
                    break;
                    default: {
                        sprintf(buffer,op_db,opByte);
                        emit_throw(buffer,op_unknown);
                    }
                    break;
                }
            }
            break;
            // --------------------------
            // AAD
            // --------------------------
            case 0xd5: {
                if (readByte())
                break;
                switch (opByte) {
                    case 0x0a: {
                        emit("aad", op_aa,
                        "Division");
                    }
                    break;
                    default: {
                        sprintf(buffer,op_db,opByte);
                        emit_throw(buffer,op_unknown);
                    }
                    break;
                }
            }
            break;
            default: {
                sprintf(buffer,op_db,opByte);
                emit_throw(buffer,op_unknown);
            }
            break;
        }
    }   }
    catch (EUnknownOpCode &e) {
        ErrorLog << "unknown opcode not handled."  << endl
                 << "check your binary."           << endl;
        isError = true;
    }
    catch (EDOSdllModuleNotLoaded &e) {
        ErrorLog << "Module:\n"
                 << BorlDOS
                 << " could not be loaded."
                 << endl;
        isError = true;
    }
    catch (...) {
        ErrorLog << "unhandled exception occured." << endl
                 << "program aborted."             << endl;
        isError = true;
    }
    
    delete [] buffer;
    fclose(hFile);
    
    if (!isError) {
        cout << "Assembly of: " << argv[1] << endl
             << sa.str()
             << endl;
        return 0;
    }

    ErrorLog << "no output." << endl;
    cerr << ErrorLog.str();
    result = 1;
    
    return result;
}
