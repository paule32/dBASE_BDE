
#include <config.h>

#include <stddef.h> /* size_t */

#if defined(_WIN32) && defined(HAVE_STDAFX_H)
#include "stdafx.h"
#endif /* HAVE_STDAFX_H */

#include "dwarf.h"
#include "libdwarf.h"
#include "libdwarf_private.h"
#include "dwarf_base_types.h"
#include "dwarf_opaque.h"
#include "dwarf_error.h"
#include "dwarf_funcs.h"
#include "dwarf_global.h"

int
dwarf_get_funcs(Dwarf_Debug dbg,
    Dwarf_Func ** funcs,
    Dwarf_Signed * ret_func_count, Dwarf_Error * error)
{
    Dwarf_Chain head_chain = 0;
    /*  plast chain is not a chain entry. It points
        to the next place to record a new chain
        poointer. */
    Dwarf_Chain *plast_chain = &head_chain ;

    int res = _dwarf_load_section(dbg, &dbg->de_debug_funcnames,
        error);
    if (res != DW_DLV_OK) {
        return res;
    }
    if (!dbg->de_debug_funcnames.dss_size) {
        return DW_DLV_NO_ENTRY;
    }

    return _dwarf_internal_get_pubnames_like_data(dbg,
        ".debug_funcnames",
        dbg->de_debug_funcnames.dss_data,
        dbg->de_debug_funcnames.dss_size,
        /* Type punning for sections with identical format. */
        (Dwarf_Global **) funcs,
        &head_chain,
        &plast_chain,
        ret_func_count,
        error,
        DW_DLA_FUNC_CONTEXT,
        DW_DLA_FUNC,
        DW_DLE_DEBUG_FUNCNAMES_LENGTH_BAD,
        DW_DLE_DEBUG_FUNCNAMES_VERSION_ERROR);
}

/* Deallocating fully requires deallocating the list
   and all entries.  But some internal data is
   not exposed, so we need a function with internal knowledge.
*/

void
dwarf_funcs_dealloc(Dwarf_Debug dbg, Dwarf_Func * dwgl,
    Dwarf_Signed count)
{
    _dwarf_internal_globals_dealloc(dbg, (Dwarf_Global *) dwgl,
        count);
    return;
}

int
dwarf_funcname(Dwarf_Func func_in,
    char **ret_name,
    Dwarf_Error * error)
{
    Dwarf_Global func = (Dwarf_Global) func_in;

    if (func == NULL) {
        _dwarf_error(NULL, error, DW_DLE_FUNC_NULL);
        return DW_DLV_ERROR;
    }

    *ret_name = (char *) (func->gl_name);
    return DW_DLV_OK;
}

int
dwarf_func_die_offset(Dwarf_Func func_in,
    Dwarf_Off * return_offset, Dwarf_Error * error)
{
    Dwarf_Global func = (Dwarf_Global) func_in;

    return dwarf_global_die_offset(func, return_offset, error);
}

int
dwarf_func_cu_offset(Dwarf_Func func_in,
    Dwarf_Off * return_offset, Dwarf_Error * error)
{
    Dwarf_Global func = (Dwarf_Global) func_in;

    return dwarf_global_cu_offset(func, return_offset, error);
}

int
dwarf_func_name_offsets(Dwarf_Func func_in,
    char **ret_func_name,
    Dwarf_Off * die_offset,
    Dwarf_Off * cu_die_offset, Dwarf_Error * error)
{
    Dwarf_Global func = (Dwarf_Global) func_in;

    return dwarf_global_name_offsets(func,
        ret_func_name,
        die_offset, cu_die_offset, error);
}
