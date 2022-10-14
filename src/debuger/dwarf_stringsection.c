#include <config.h>

#include <stddef.h> /* NULL, size_t */
#include <string.h> /* strlen() */

#if defined(_WIN32) && defined(HAVE_STDAFX_H)
#include "stdafx.h"
#endif /* HAVE_STDAFX_H */

#include "dwarf.h"
#include "libdwarf.h"
#include "libdwarf_private.h"
#include "dwarf_base_types.h"
#include "dwarf_opaque.h"
#include "dwarf_error.h"
#include "dwarf_util.h"

int
dwarf_get_str(Dwarf_Debug dbg,
    Dwarf_Off offset,
    char **string,
    Dwarf_Signed * returned_str_len, Dwarf_Error * error)
{
    int res = DW_DLV_ERROR;
    void *secptr = 0;
    void *begin = 0;
    void *end = 0;

    if (!dbg || dbg->de_magic != DBG_IS_VALID) {
        _dwarf_error_string(NULL, error, DW_DLE_DBG_NULL,
            "DW_DLE_DBG_NULL:calling dwarf_get_str()"
            "Either null or it contains"
            "a stale Dwarf_Debug pointer");
        return DW_DLV_ERROR;
    }
    if (offset == dbg->de_debug_str.dss_size) {
        /*  Normal (if we've iterated thru the set of strings using
            dwarf_get_str and are at the end). */
        return DW_DLV_NO_ENTRY;
    }
    if (offset > dbg->de_debug_str.dss_size) {
        _dwarf_error(dbg, error, DW_DLE_DEBUG_STR_OFFSET_BAD);
        return DW_DLV_ERROR;
    }

    if (string == NULL) {
        _dwarf_error(dbg, error, DW_DLE_STRING_PTR_NULL);
        return DW_DLV_ERROR;
    }

    res = _dwarf_load_section(dbg, &dbg->de_debug_str,error);
    if (res != DW_DLV_OK) {
        return res;
    }
    if (!dbg->de_debug_str.dss_size) {
        return DW_DLV_NO_ENTRY;
    }
    secptr =dbg->de_debug_str.dss_data;
    begin = (char *)secptr + offset;
    end =   (char *)secptr + dbg->de_debug_str.dss_size;

    res = _dwarf_check_string_valid(dbg,secptr,begin,end,
        DW_DLE_DEBUG_STR_OFFSET_BAD,error);
    if (res != DW_DLV_OK) {
        return res;
    }

    *string = (char *) begin;
    *returned_str_len = strlen(*string);
    return DW_DLV_OK;
}
