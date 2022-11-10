@set path_old=%path%
@set path=E:\MinGW\bin;C:\FPC32\3.2.2\bin\i386-win32;%path%;

ppc386 BorlandDOS.pas

rem gendef BorlandDOS.dll
rem gendef BorlandVCL.dll

dlltool --kill-at --dllname BorlandDOS.dll --def BorlandDOS.def --output-lib libBorlandDOS.a
dlltool --kill-at --dllname BorlandVCL.dll --def BorlandVCL.def --output-lib libBorlandVCL.a

g++ -std=c++17 -O2 -m32 -c dissDOS.cc
g++ -std=c++17 -O2 -m32 -c dissVCL.cc

g++ -m32 -o dissDOS.exe dissDOS.o -L. -lasmjit -lBorlandDOS
g++ -m32 -o dissVCL.exe dissVCL.o -L. -lasmjit -lBorlandVCL

E:\nasm\nasm.exe -fbin -o test1.bin test1.asm

@set path=%path_old%
