
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
#include "dwarf_weaks.h"
#include "dwarf_global.h"

int
dwarf_get_weaks(Dwarf_Debug dbg,
    Dwarf_Weak ** weaks,
    Dwarf_Signed * ret_weak_count, Dwarf_Error * error)
{
    Dwarf_Chain head_chain = 0;
    /*  plast chain is not a chain entry. It points
        to the next place to record a new chain
        poointer. */
    Dwarf_Chain *plast_chain = &head_chain ;
    int res = _dwarf_load_section(dbg, &dbg->de_debug_weaknames,
        error);

    if (res != DW_DLV_OK) {
        return res;
    }
    if (!dbg->de_debug_weaknames.dss_size) {
        return DW_DLV_NO_ENTRY;
    }
    return _dwarf_internal_get_pubnames_like_data(dbg,
        ".debug_weaknames",
        dbg->de_debug_weaknames.dss_data,
        dbg->de_debug_weaknames.dss_size,
        (Dwarf_Global **) weaks, /* Type punning for sections
            with identical format. */
        &head_chain,
        &plast_chain,
        ret_weak_count,
        error,
        DW_DLA_WEAK_CONTEXT,
        DW_DLA_WEAK,
        DW_DLE_DEBUG_WEAKNAMES_LENGTH_BAD,
        DW_DLE_DEBUG_WEAKNAMES_VERSION_ERROR);
}

/* Deallocating fully requires deallocating the list
   and all entries.  But some internal data is
   not exposed, so we need a function with internal knowledge.
*/

void
dwarf_weaks_dealloc(Dwarf_Debug dbg, Dwarf_Weak * dwgl,
    Dwarf_Signed count)
{
    _dwarf_internal_globals_dealloc(dbg, (Dwarf_Global *) dwgl,
        count);
    return;
}

int
dwarf_weakname(Dwarf_Weak weak_in,
    char **ret_name,
    Dwarf_Error * error)
{
    Dwarf_Global weak = (Dwarf_Global) weak_in;

    if (weak == NULL) {
        _dwarf_error(NULL, error, DW_DLE_WEAK_NULL);
        return DW_DLV_ERROR;
    }
    *ret_name = (char *) (weak->gl_name);
    return DW_DLV_OK;
}

int
dwarf_weak_die_offset(Dwarf_Weak weak_in,
    Dwarf_Off * weak_off, Dwarf_Error * error)
{
    Dwarf_Global weak = (Dwarf_Global) weak_in;

    return dwarf_global_die_offset(weak, weak_off, error);
}

int
dwarf_weak_cu_offset(Dwarf_Weak weak_in,
    Dwarf_Off * weak_off, Dwarf_Error * error)
{
    Dwarf_Global weak = (Dwarf_Global) weak_in;

    return dwarf_global_cu_offset(weak, weak_off, error);
}

int
dwarf_weak_name_offsets(Dwarf_Weak weak_in,
    char **weak_name,
    Dwarf_Off * die_offset,
    Dwarf_Off * cu_offset, Dwarf_Error * error)
{
    Dwarf_Global weak = (Dwarf_Global) weak_in;

    return dwarf_global_name_offsets(weak,
        weak_name, die_offset, cu_offset, error);
}
