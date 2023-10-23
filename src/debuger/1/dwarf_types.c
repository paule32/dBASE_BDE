
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
#include "dwarf_types.h"
#include "dwarf_global.h"

int
dwarf_get_types(Dwarf_Debug dbg,
    Dwarf_Type ** types,
    Dwarf_Signed * ret_type_count,
    Dwarf_Error * error)
{
    Dwarf_Chain head_chain = 0;
    /*  plast chain is not a chain entry. It points
        to the next place to record a new chain
        poointer. */
    Dwarf_Chain *plast_chain = &head_chain ;

    int res = _dwarf_load_section(dbg, &dbg->de_debug_typenames,
        error);
    if (res != DW_DLV_OK) {
        return res;
    }
    if (!dbg->de_debug_typenames.dss_size) {
        return DW_DLV_NO_ENTRY;
    }

    return _dwarf_internal_get_pubnames_like_data(dbg,
        ".debug_typenames",
        dbg->de_debug_typenames.dss_data,
        dbg->de_debug_typenames.dss_size,
        (Dwarf_Global **) types,  /* type punning, Dwarf_Type is
            never a completed type */
        &head_chain,
        &plast_chain,
        ret_type_count,
        error,
        DW_DLA_TYPENAME_CONTEXT,
        DW_DLA_TYPENAME,
        DW_DLE_DEBUG_TYPENAMES_LENGTH_BAD,
        DW_DLE_DEBUG_TYPENAMES_VERSION_ERROR);
}

/*  Deallocating fully requires deallocating the list
    and all entries.  But some internal data is
    not exposed, so we need a function with internal knowledge.  */

void
dwarf_types_dealloc(Dwarf_Debug dbg, Dwarf_Type * dwgl,
    Dwarf_Signed count)
{
    _dwarf_internal_globals_dealloc(dbg, (Dwarf_Global *) dwgl,
        count);
    return;
}

int
dwarf_typename(Dwarf_Type type_in,
    char **ret_name,
    Dwarf_Error * error)
{
    Dwarf_Global type = (Dwarf_Global) type_in;

    if (type == NULL) {
        _dwarf_error(NULL, error, DW_DLE_TYPE_NULL);
        return DW_DLV_ERROR;
    }

    *ret_name = (char *) (type->gl_name);
    return DW_DLV_OK;
}

int
dwarf_type_die_offset(Dwarf_Type type_in,
    Dwarf_Off * ret_offset, Dwarf_Error * error)
{
    Dwarf_Global type = (Dwarf_Global) type_in;

    return dwarf_global_die_offset(type, ret_offset, error);
}

int
dwarf_type_cu_offset(Dwarf_Type type_in,
    Dwarf_Off * ret_offset, Dwarf_Error * error)
{
    Dwarf_Global type = (Dwarf_Global) type_in;

    return dwarf_global_cu_offset(type, ret_offset, error);
}

int
dwarf_type_name_offsets(Dwarf_Type type_in,
    char **returned_name,
    Dwarf_Off * die_offset,
    Dwarf_Off * cu_die_offset, Dwarf_Error * error)
{
    Dwarf_Global type = (Dwarf_Global) type_in;
    return dwarf_global_name_offsets(type,
        returned_name,
        die_offset, cu_die_offset, error);
}
