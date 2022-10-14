#include <config.h>

#include <stddef.h> /* NULL size_t */

#if defined(_WIN32) && defined(HAVE_STDAFX_H)
#include "stdafx.h"
#endif /* HAVE_STDAFX_H */

#include "dwarf.h"
#include "libdwarf.h"
#include "libdwarf_private.h"
#include "dwarf_base_types.h"
#include "dwarf_opaque.h"
#include "dwarf_error.h"
#include "dwarf_vars.h"
#include "dwarf_global.h"

int
dwarf_get_vars(Dwarf_Debug dbg,
    Dwarf_Var ** vars,
    Dwarf_Signed * ret_var_count, Dwarf_Error * error)
{
    Dwarf_Chain head_chain = 0;
    /*  plast chain is not a chain entry. It points
        to the next place to record a new chain
        poointer. */
    Dwarf_Chain *plast_chain = &head_chain;

    int res = _dwarf_load_section(dbg, &dbg->de_debug_varnames,error);
    if (res != DW_DLV_OK) {
        return res;
    }
    if (!dbg->de_debug_abbrev.dss_size) {
        return DW_DLV_NO_ENTRY;
    }

    return _dwarf_internal_get_pubnames_like_data(dbg,
        ".debug_varnames",
        dbg->de_debug_varnames.dss_data,
        dbg->de_debug_varnames.dss_size,
        (Dwarf_Global **) vars, /* Type punning for sections
            with identical format. */
        &head_chain,
        &plast_chain,
        ret_var_count,
        error,
        DW_DLA_VAR_CONTEXT,
        DW_DLA_VAR,
        DW_DLE_DEBUG_VARNAMES_LENGTH_BAD,
        DW_DLE_DEBUG_VARNAMES_VERSION_ERROR);
}

/* Deallocating fully requires deallocating the list
   and all entries.  But some internal data is
   not exposed, so we need a function with internal knowledge.
*/

void
dwarf_vars_dealloc(Dwarf_Debug dbg, Dwarf_Var * dwgl,
    Dwarf_Signed count)
{
    _dwarf_internal_globals_dealloc(dbg, (Dwarf_Global *) dwgl,
        count);
    return;
}

int
dwarf_varname(Dwarf_Var var_in,
    char **ret_varname,
    Dwarf_Error * error)
{
    Dwarf_Global var = (Dwarf_Global) var_in;

    if (var == NULL) {
        _dwarf_error(NULL, error, DW_DLE_VAR_NULL);
        return DW_DLV_ERROR;
    }

    *ret_varname = (char *) (var->gl_name);
    return DW_DLV_OK;
}

int
dwarf_var_die_offset(Dwarf_Var var_in,
    Dwarf_Off * returned_offset, Dwarf_Error * error)
{
    Dwarf_Global var = (Dwarf_Global) var_in;

    return dwarf_global_die_offset(var, returned_offset, error);

}

int
dwarf_var_cu_offset(Dwarf_Var var_in,
    Dwarf_Off * returned_offset, Dwarf_Error * error)
{
    Dwarf_Global var = (Dwarf_Global) var_in;

    return dwarf_global_cu_offset(var, returned_offset, error);
}

int
dwarf_var_name_offsets(Dwarf_Var var_in,
    char **returned_name,
    Dwarf_Off * die_offset,
    Dwarf_Off * cu_offset, Dwarf_Error * error)
{
    Dwarf_Global var = (Dwarf_Global) var_in;

    return
        dwarf_global_name_offsets(var,
            returned_name, die_offset, cu_offset,
            error);
}
