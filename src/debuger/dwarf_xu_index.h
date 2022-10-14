#ifndef DWARF_XU_INDEX_H
#define DWARF_XU_INDEX_H

/*  The following is based on
    The gdb online documentation at
    https://gcc.gnu.org/wiki/DebugFissionDWP
    and the draft DWARF5 standard.
*/

struct Dwarf_Xu_Index_Header_s {
    Dwarf_Debug      gx_dbg;
    Dwarf_Small    * gx_section_data;
    Dwarf_Unsigned   gx_section_length;

    Dwarf_Unsigned   gx_version;
    Dwarf_Unsigned   gx_column_count_sections;  /* N */
    Dwarf_Unsigned   gx_units_in_index;         /* U */
    Dwarf_Unsigned   gx_slots_in_hash;          /* S */
    Dwarf_Unsigned   gx_hash_table_offset;
    Dwarf_Unsigned   gx_index_table_offset;
    Dwarf_Unsigned   gx_section_offsets_headerline_offset;
    Dwarf_Unsigned   gx_section_offsets_offset;
    Dwarf_Unsigned   gx_section_sizes_offset;
    /*  Taken from gx_section_offsets_headerline, these
        are the section ids. DW_SECT_* (0 - N-1) */
    unsigned long    gx_section_id[9];

    /* "tu" or "cu" without the quotes, of course. NUL terminated.  */
    char             gx_type[4];

    /* Do not free gx_section_name. */
    const char     * gx_section_name;
};

#endif /* DWARF_XU_INDEX_H */
