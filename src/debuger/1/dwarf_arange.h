
/*  This structure is used to read an arange into. */
struct Dwarf_Arange_s {

    /*  The segment selector. Only non-zero if Dwarf4, only
        meaningful if ar_segment_selector_size non-zero   */
    Dwarf_Unsigned ar_segment_selector;

    /* Starting address of the arange, ie low-pc. */
    Dwarf_Addr ar_address;

    /* Length of the arange. */
    Dwarf_Unsigned ar_length;

    /*  Offset into .debug_info of the start of the compilation-unit
        containing this set of aranges.
        Applies only to .debug_info, not .debug_types. */
    Dwarf_Off ar_info_offset;

    /* Corresponding Dwarf_Debug. */
    Dwarf_Debug ar_dbg;

    Dwarf_Half ar_segment_selector_size;
};

int
_dwarf_get_aranges_addr_offsets(Dwarf_Debug dbg,
    Dwarf_Addr ** addrs,
    Dwarf_Off ** offsets,
    Dwarf_Signed * count,
    Dwarf_Error * error);
