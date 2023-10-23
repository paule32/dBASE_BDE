
#include <config.h>

#include <stddef.h> /* size_t */
#include <stdio.h>  /* SEEK_END SEEK_SET */
#include <stdlib.h> /* free() malloc() */
#include <string.h> /* memcpy() */
#include <time.h>
#include <wchar.h>
#include <sys/types.h>
#include <io.h>
#include <share.h>

#ifdef WIN32
#ifdef HAVE_STDAFX_H
#include <windows.h>
#include "stdafx.h"
#endif /* HAVE_STDAFX_H */
#include <io.h> /* lseek() off_t ssize_t */
#elif defined HAVE_UNISTD_H
#include <unistd.h> /* lseek() off_t */
#endif /* _WIN32 */

#include "dwarf.h"
#include "libdwarf.h"
#include "libdwarf_private.h"
#include "dwarf_base_types.h"
#include "dwarf_opaque.h"
#include "dwarf_error.h"

unsigned int
dwarf_basic_crc32 (const unsigned char *buf,
    unsigned long len,
    unsigned int init)
{
    return _dwarf_crc32(init,buf,len);
}
/*  Returns DW_DLV_OK DW_DLV_NO_ENTRY or DW_DLV_ERROR
    crc32 used for debuglink crc calculation.
    Caller passes pointer to an
    uninitialized array of 4 unsigned char
    and if this returns DW_DLV_OK that is filled in.
    The crc is calculated based on reading
    the entire current open
    Dwarf_Debug dbg object file and all bytes in
    the file are read to create  the crc.  */
int
dwarf_crc32 (Dwarf_Debug dbg,unsigned char *crcbuf,
    Dwarf_Error *error)
{
    int   size_left = 0;

    off_t   fsize = 0;
    off_t   lsval = 0;
    /*  Named with u to remind the reader that this is
        an unsigned value. */
    int         readlenu = 1000;
    unsigned char *readbuf = 0;
    unsigned int   tcrc = 0;
    unsigned int   init = 0;
    int            fd = -1;

    if (!dbg) {
        _dwarf_error_string(dbg,error,DW_DLE_DBG_NULL,
            "DW_DLE_DBG_NULL: Bad call to dwarf_crc32");
        return DW_DLV_ERROR;
    }
    if (!crcbuf) {
        return DW_DLV_NO_ENTRY;
    }
    if (!dbg->de_owns_fd) {
        return DW_DLV_NO_ENTRY;
    }
    fd = dbg->de_fd;
    if (fd < 0) {
        return DW_DLV_NO_ENTRY;
    }
    fd = dbg->de_fd;
    if (dbg->de_filesize) {
        fsize = size_left = (off_t)dbg->de_filesize;
    } else {
        fsize = size_left = lseek(fd,0L,SEEK_END);
        if (fsize   == (off_t)-1) {
            _dwarf_error_string(dbg,error,DW_DLE_SEEK_ERROR,
                "DW_DLE_SEEK_ERROR: dwarf_crc32 seek "
                "to end fails");
            return DW_DLV_ERROR;
        }
    }
    if (fsize <= (off_t)500) {
        /*  Not a real object file.
            A random length check. */
        return DW_DLV_NO_ENTRY;
    }
    lsval  = lseek(fd,0L,SEEK_SET);
    if (lsval < 0) {
        _dwarf_error_string(dbg,error,DW_DLE_SEEK_ERROR,
            "DW_DLE_SEEK_ERROR: dwarf_crc32 seek "
            "to start fails");
        return DW_DLV_ERROR;
    }
    readbuf = (unsigned char *)malloc(readlenu);
    if (!readbuf) {
        _dwarf_error_string(dbg,error,DW_DLE_ALLOC_FAIL,
            "DW_DLE_ALLOC_FAIL: dwarf_crc32 read buffer"
            " alloc fails");
        return DW_DLV_ERROR;
    }

    while (size_left > 0) {
        int readreturnv = 0;

        if (size_left < (off_t)readlenu) {
            readlenu = (size_t)size_left;
        }


        readreturnv = _read(fd,readbuf,readlenu);

        if (readreturnv != (signed int)readlenu) {
            _dwarf_error_string(dbg,error,DW_DLE_READ_ERROR,
                "DW_DLE_READ_ERROR: dwarf_crc32 read fails ");
            free(readbuf);
            return DW_DLV_ERROR;
        }
        tcrc = _dwarf_crc32(init,readbuf,readlenu);
        init = tcrc;
        size_left -= (off_t)readlenu;
    }
    /*  endianness issues?  */
    free(readbuf);
    memcpy(crcbuf,(void *)&tcrc,4);
    return DW_DLV_OK;
}
