#ifndef DWARF_READING_H
#define DWARF_READING_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#ifndef DW_DLV_OK
/* DW_DLV_OK  must match libdwarf.h */
/* DW_DLV_NO_ENTRY  must match libdwarf.h  */
#define DW_DLV_OK 0
#define DW_DLV_NO_ENTRY -1
#define DW_DLV_ERROR 1
#endif /* DW_DLV_OK */

#define ALIGN4 4
#define ALIGN8 8

#define PREFIX "\t"
#define LUFMT "%lu"
#define UFMT "%u"
#define DFMT "%d"
#define XFMT "0x%x"

/* even if already seen, values must match, so no #ifdef needed. */
#define DW_DLV_NO_ENTRY  -1
#define DW_DLV_OK         0
#define DW_DLV_ERROR      1

#define P printf
#define F fflush(stdout)

#define RRMOA(f,buf,loc,siz,fsiz,errc) _dwarf_object_read_random(\
    (f),(char *)(buf),(loc),(siz),(fsiz),(errc));

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* DWARF_READING_H */
