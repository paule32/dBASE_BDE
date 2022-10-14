
/*  dsc_type: if 0, then dsc_low is a single discriminant value
    and dsc_high is zero..
    If 1, then dsc_low, dsc_high are a discriminant range

    All the messy complexity here is so we can have both
    a set of values read as uleb and as sleb.
    We make our own copy of the block for the same reason.
*/
struct Dwarf_Dsc_Entry_s {
    /*  Type is a 1 byte leb that reads the same as sleb or uleb
        because its value can only be zero or one. */
    Dwarf_Half     dsc_type;
    Dwarf_Unsigned dsc_low_u;
    Dwarf_Unsigned dsc_high_u;
    Dwarf_Signed dsc_low_s;
    Dwarf_Signed dsc_high_s;
};
struct Dwarf_Dsc_Head_s {
    Dwarf_Debug     dsh_debug;
    Dwarf_Unsigned  dsh_count;
    Dwarf_Small    *dsh_block;
    Dwarf_Unsigned  dsh_block_len;
    /*  Following two are flags to tell us whether
        lebs already read in a given signedness. */
    Dwarf_Bool      dsh_set_unsigned;
    Dwarf_Bool      dsh_set_signed;

    struct Dwarf_Dsc_Entry_s *dsh_array;
};

void _dwarf_dsc_destructor(void *m);
