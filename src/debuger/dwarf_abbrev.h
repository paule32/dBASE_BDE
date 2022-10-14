
/*  In a given CU, one of these is (eventually) set up
    for every abbreviation we need to find (and for all
    those earlier in the abbreviations for that CU).
    So we don't want elements needlessly big.
*/
struct Dwarf_Abbrev_s {
    /*  No TAG should exceed DW_TAG_hi_user, 0xffff, but
        we do allow a larger value here. */
    Dwarf_Unsigned dab_tag;
    /*  Abbreviations are numbered (normally sequentially from
        1 and so 16 bits is not enough!  */
    Dwarf_Unsigned dab_code;
    Dwarf_Small dab_has_child;
    /*  dab_abbrev_ptr points to the abbreviations
        themselves in memory, the list of attr/form
        integers terminated by 0,0. */
    Dwarf_Byte_Ptr dab_abbrev_ptr;
    Dwarf_Debug dab_dbg;

    /* Section global offset of the abbrev. */
    Dwarf_Off    dab_goffset;
    /* dab_count is the number of attr/form uleb pairs */
    Dwarf_Off    dab_count;

    /*  When the caller cycles through attr/form pairs
        by index from zero this lets the code read just one
        pair to work. */
    Dwarf_Byte_Ptr dab_next_ptr;
    Dwarf_Unsigned dab_next_index;
};

int _dwarf_count_abbrev_entries(Dwarf_Debug dbg,
    Dwarf_Byte_Ptr abbrev_ptr,
    Dwarf_Byte_Ptr abbrev_section_end,
    Dwarf_Unsigned *abbrev_count_out,
    Dwarf_Byte_Ptr *abbrev_ptr_out,
    Dwarf_Error *error);
