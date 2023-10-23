
/* #define DWARF_SIMPLE_MALLOC 1  */

char * _dwarf_get_alloc(Dwarf_Debug, Dwarf_Small, Dwarf_Unsigned);
Dwarf_Debug _dwarf_get_debug(void);
int _dwarf_free_all_of_one_debug(Dwarf_Debug);
struct Dwarf_Error_s * _dwarf_special_no_dbg_error_malloc(void);

void _dwarf_error_destructor(void *);

/*  ALLOC_AREA_INDEX_TABLE_MAX is the size of the
    struct ial_s index_into_allocated array in dwarf_alloc.c
*/
#define ALLOC_AREA_INDEX_TABLE_MAX 65

void _dwarf_add_to_static_err_list(Dwarf_Error err);
void _dwarf_flush_static_error_list(void);
