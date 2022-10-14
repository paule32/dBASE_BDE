
#define HASHSEARCH

#ifdef HASHSEARCH
/* Only needed for hash based search in a tsearch style. */
#define INITTREE(x,y) (x) = dwarf_initialize_search_hash(&(x),(y),0)
#else
#define INITTREE(x,y)
#endif /* HASHSEARCH */

/*  Contexts are in a list in a dbg and
    do not move once established.
    So saving one is ok. as long as the dbg
    exists. */
struct Dwarf_Tied_Entry_s {
    Dwarf_Sig8 dt_key;
    Dwarf_CU_Context dt_context;
};

int _dwarf_tied_compare_function(const void *l, const void *r);
void * _dwarf_tied_make_entry(Dwarf_Sig8 *key, Dwarf_CU_Context val);
unsigned __int64 _dwarf_tied_data_hashfunc(const void *keyp);
