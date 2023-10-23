#ifndef DWARF_DEBUGLINK_H
#define DWARF_DEBUGLINK_H
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int _dwarf_pathjoinl(dwarfstring *target,dwarfstring * input);

int _dwarf_construct_linkedto_path(
    char         **global_prefixes_in,
    unsigned       length_global_prefixes_in,
    char          *pathname_in,
    char          *link_string_in, /* from debug link */
    dwarfstring   *link_string_fullpath,
#if 0
    unsigned char *crc_in, /* from debug_link, 4 bytes */
#endif

    unsigned char *buildid, /* from gnu buildid */
    unsigned       buildid_length, /* from gnu buildid */
    char        ***paths_out,
    unsigned      *paths_out_length,
    int *errcode);
#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* DWARF_DEBUGLINK_H */
