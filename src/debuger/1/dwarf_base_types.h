
#define true                    1
#define false                   0

/* .debug_addr new in DWARF5 */
#define DW_ADDR_VERSION5   5

/* To identify a cie. That is, for .debug_frame */
#define DW_CIE_ID         ~(0x0)
#define DW_CIE_VERSION      1 /* DWARF2 */
#define DW_CIE_VERSION3     3 /* DWARF3 */
#define DW_CIE_VERSION4     4 /* DWARF4 */
#define DW_CIE_VERSION5     5 /* DWARF5 */

/*  For .debug_info DWARF2,3,4,5.
    .debug_types in DWARF4 only,  and gets DW_CU_VERSION4.  */
#define DW_CU_VERSION2 2
#define DW_CU_VERSION3 3
#define DW_CU_VERSION4 4
#define DW_CU_VERSION5 5

/*   For .debug_macro: DWARF 4 (extension) or DWARF5 */
#define DW_MACRO_VERSION4 4
#define DW_MACRO_VERSION5 5

/* DWARF2,3, 4  and 5.*/
#define DW_ARANGES_VERSION2 2

#define DW_LINE_VERSION2   2
#define DW_LINE_VERSION3   3
#define DW_LINE_VERSION4   4
#define DW_LINE_VERSION5   5

/* .debug_line_str (and .dwo) new in DWARF5. */
#define DW_LINE_STR_VERSION5   5
#define EXPERIMENTAL_LINE_TABLES_VERSION  0xf006\
    /* Experimental two-level line tables */

/* .debug_loc (and .dwo) First header version number is  DWARF5. */
#define DW_LOC_VERSION5   5

/* .debug_names new in DWARF5. */
#define DW_NAMES_VERSION5   5

/* .debug_pubnames in DWARF2,3,4. */
#define DW_PUBNAMES_VERSION2 2
/* .debug_pubnames in DWARF3,4. */
#define DW_PUBTYPES_VERSION2 2

/* .debug_ranges gets a version number in header in DWARF5. */
#define DW_RANGES_VERSION5 5

/* .debug_str_offsets (and .dwo) new in DWARF5. */
#define DW_STR_OFFSETS_VERSION5   5
#define DW_STR_OFFSETS_VERSION4   4 /* GNU extension in DW4 */

/* .debug_sup new in DWARF5. */
#define DW_SUP_VERSION5 5

/* .debug_cu_index new in DWARF5. */
#define DW_CU_INDEX_VERSION5 5
/* .debug_tu_index new in DWARF5. */
#define DW_TU_INDEX_VERSION5 5

/*  These are allocation type codes for structs that
    are internal to the Libdwarf Consumer library.  */
#define DW_DLA_ABBREV_LIST      0x1e
#define DW_DLA_CHAIN            0x1f
#define DW_DLA_CU_CONTEXT       0x20
#define DW_DLA_FRAME            0x21
#define DW_DLA_GLOBAL_CONTEXT   0x22
#define DW_DLA_FILE_ENTRY       0x23
#define DW_DLA_LINE_CONTEXT     0x24
#define DW_DLA_LOC_CHAIN        0x25
#define DW_DLA_HASH_TABLE       0x26
#define DW_DLA_FUNC_CONTEXT     0x27
#define DW_DLA_TYPENAME_CONTEXT 0x28
#define DW_DLA_VAR_CONTEXT      0x29
#define DW_DLA_WEAK_CONTEXT     0x2a
#define DW_DLA_PUBTYPES_CONTEXT 0x2b  /* DWARF3 */
#define DW_DLA_HASH_TABLE_ENTRY 0x2c
#define DW_DLA_FISSION_PERCU    0x2d
#define DW_DLA_CHAIN_2          0x3d
/* Thru 0x36 reserved for internal future use. */

/*  Maximum number of allocation types for allocation routines.
    Only used with malloc_check.c and that is basically obsolete. */
#define MAX_DW_DLA  0x3a

typedef signed char Dwarf_Sbyte;
typedef unsigned char Dwarf_Ubyte;
typedef signed short Dwarf_Shalf;
typedef Dwarf_Small *Dwarf_Byte_Ptr;

#define DWARF_HALF_SIZE 2
#define DWARF_32BIT_SIZE 4
#define DWARF_64BIT_SIZE 8

typedef struct Dwarf_Abbrev_List_s *Dwarf_Abbrev_List;
typedef struct Dwarf_File_Entry_s *Dwarf_File_Entry;
typedef struct Dwarf_CU_Context_s *Dwarf_CU_Context;
typedef struct Dwarf_Hash_Table_s *Dwarf_Hash_Table;
typedef struct Dwarf_Hash_Table_Entry_s *Dwarf_Hash_Table_Entry;

typedef struct Dwarf_Alloc_Hdr_s *Dwarf_Alloc_Hdr;
