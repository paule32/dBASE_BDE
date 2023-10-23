
#ifdef _WIN32
#define _CRT_SECURE_NO_WARNINGS
#endif /* _WIN32 */

#include <config.h>

#include <stddef.h> /* size_t */
#include <stdio.h>  /* SEEK_END SEEK_SET */

#ifdef _WIN32
#ifdef HAVE_STDAFX_H
#include "stdafx.h"
#endif /* HAVE_STDAFX_H */
#include <io.h> /* off_t */
#elif defined HAVE_UNISTD_H
#include <unistd.h> /* off_t */
#endif /* _WIN32*/

#include "dwarf.h"
#include "libdwarf.h"
#include "libdwarf_private.h"
#include "dwarf_base_types.h"
#include "dwarf_opaque.h"
#include "dwarf_safe_strcpy.h"
#include "dwarf_object_read_common.h"

/*  Neither off_t nor ssize_t is in C90.
    However, both are in Posix:
    IEEE Std 1003.1-1990, aka
    ISO/IEC 9954-1:1990. */
int
_dwarf_object_read_random(int fd, char *buf, int loc,
    size_t size, int filesize, int *errc)
{
    int scode = 0;
    unsigned __int64 rcode = 0;
    int endpoint = 0;

    if (loc >= filesize) {
        /*  Seek can seek off the end. Lets not allow that.
            The object is corrupt. */
        *errc = DW_DLE_SEEK_OFF_END;
        return DW_DLV_ERROR;
    }
    endpoint = loc+size;
    if (endpoint > filesize) {
        /*  Let us -not- try to read past end of object.
            The object is corrupt. */
        *errc = DW_DLE_READ_OFF_END;
        return DW_DLV_ERROR;
    }
    scode = lseek(fd,loc,SEEK_SET);
    if (scode == (int)-1) {
        *errc = DW_DLE_SEEK_ERROR;
        return DW_DLV_ERROR;
    }
    rcode = read(fd,buf,size);
    if (rcode == -1 ||
        (size_t)rcode != size) {
        *errc = DW_DLE_READ_ERROR;
        return DW_DLV_ERROR;
    }
    return DW_DLV_OK;
}
