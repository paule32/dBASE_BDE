
#ifndef DWARF_OBJECT_DETECTOR_H
#define DWARF_OBJECT_DETECTOR_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*  Declares the interface function.
    outpath is a place you provide, of a length outpath_len
    you consider reasonable,
    where the final path used is recorded.
    outpath_len must be larger than strlen(path);

    This matters as for mach-o if the path is a directory
    name the function will look in the standard macho-place
    for the object file (useful for dSYM) and return the
    constructed path in oupath.
    returns DW_DLV_OK, DW_DLV_ERROR, or DW_DLV_NO_ENTRY */

#ifndef DW_FTYPE_UNKNOWN
#define DW_FTYPE_UNKNOWN 0
#define DW_FTYPE_ELF     1
#define DW_FTYPE_MACH_O  2
#define DW_FTYPE_PE      3
#define DW_FTYPE_ARCHIVE 4  /* unix archive */
#endif /* DW_FTYPE_UNKNOWN */

/*  offsetsize refers to the object-file-format.
    Elf 32 or macho-32 or PE 32, for example.
    Not to DWARF offset sizes.  */

/*  Path means look(first) for an dynsym object
    of the same name per MacOS standards,
    making the outpath space needed is more than
    that in path.
    Copies the actual path into outpath, (an error
    if the length in outpath_len is less than needed
    for the object found).
    If DW_DLV_NO_ENTRY or DW_DLV_ERROR returned
    the argument values other than path
    must be considered to be in an unknown state. */

/*  The errcode is a small integer distinct from libdwarf
    and simply printing the integer (returned through
    *errcode when the function returns DW_DLV_ERROR)
    will hopefully suffice for most purposes. */

int dwarf_object_detector_path(const char  *path,
    char *outpath,
    unsigned long outpath_len,
    unsigned *ftype,
    unsigned *endian,
    unsigned *offsetsize,
    Dwarf_Unsigned  *filesize,
    int * errcode);

int dwarf_object_detector_fd(int fd,
    unsigned *ftype,
    unsigned *endian,
    unsigned *offsetsize,
    Dwarf_Unsigned  *filesize,
    int * errcode);

#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* DWARF_OBJECT_DETECTOR_H */
