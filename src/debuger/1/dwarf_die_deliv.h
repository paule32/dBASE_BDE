
/*
    This struct holds information about an abbreviation.
    It is put in the hash table for abbreviations for
    a compile-unit.

    It's dealloced by dwarf_finish().
*/
struct Dwarf_Abbrev_List_s {
    Dwarf_Unsigned abl_code;
    Dwarf_Half abl_tag;
    Dwarf_Half abl_has_child;
    /* Section global offset of this abbrev entry. */
    Dwarf_Off      abl_goffset;

    /*  Singly linked synonym list in case of duplicate
        hash. */
    struct Dwarf_Abbrev_List_s *abl_next;

    /*  Points to start of attribute/form pairs in
        the .debug_abbrev section for the abbrev. */
    Dwarf_Byte_Ptr abl_abbrev_ptr;

    /*  The number of at/form[/implicitvalue] pairs
        in this abbrev. */
    Dwarf_Unsigned abl_count;
};
