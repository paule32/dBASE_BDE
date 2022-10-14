
#ifndef  DWARF_OBJECT_READ_COMMON_H
#define  DWARF_OBJECT_READ_COMMON_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

int _dwarf_object_read_random(int fd,char *buf,int loc,
    size_t size,int filesize,int *errc);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*  DWARF_OBJECT_READ_COMMON_H */
