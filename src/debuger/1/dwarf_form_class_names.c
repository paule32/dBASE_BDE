
#include <config.h>

#include "libdwarf.h"

/*  FORM_CLASS is created by libdwarf, it is
    not a part of Standard Dwarf.  Dwarf_Form_Class attempts
    to allow convenient processing of FORMs
    across DWARF2,3,4, and 5 for libdwarf,
    dwarfdump, and other clients and ensures
    type-safe referencing. */
int
dwarf_get_FORM_CLASS_name (enum Dwarf_Form_Class fc,
    const char ** s_out)
{
    switch (fc) {
    case DW_FORM_CLASS_UNKNOWN:
        *s_out = "DW_FORM_CLASS_UNKNOWN";
        return DW_DLV_OK;
    case DW_FORM_CLASS_ADDRESS:
        *s_out = "DW_FORM_CLASS_ADDRESS";
        return DW_DLV_OK;
    case DW_FORM_CLASS_BLOCK:
        *s_out = "DW_FORM_CLASS_BLOCK";
        return DW_DLV_OK;
    case DW_FORM_CLASS_CONSTANT:
        *s_out = "DW_FORM_CLASS_CONSTANT";
        return DW_DLV_OK;
    case DW_FORM_CLASS_EXPRLOC:
        *s_out = "DW_FORM_CLASS_EXPRLOC";
        return DW_DLV_OK;
    case DW_FORM_CLASS_FLAG:
        *s_out = "DW_FORM_CLASS_FLAG";
        return DW_DLV_OK;
    case DW_FORM_CLASS_LINEPTR:
        *s_out = "DW_FORM_CLASS_LINEPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_LOCLISTPTR:
        *s_out = "DW_FORM_CLASS_LOCLISTPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_MACPTR:
        *s_out = "DW_FORM_CLASS_MACPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_RANGELISTPTR:
        *s_out = "DW_FORM_CLASS_RANGELISTPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_REFERENCE:
        *s_out = "DW_FORM_CLASS_REFERENCE";
        return DW_DLV_OK;
    case DW_FORM_CLASS_STRING:
        *s_out = "DW_FORM_CLASS_STRING";
        return DW_DLV_OK;
    case DW_FORM_CLASS_FRAMEPTR:
        *s_out = "DW_FORM_CLASS_FRAMEPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_MACROPTR:
        *s_out = "DW_FORM_CLASS_MAXCROPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_ADDRPTR:
        *s_out = "DW_FORM_CLASS_ADDRPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_LOCLIST:
        *s_out = "DW_FORM_CLASS_LOCLIST";
        return DW_DLV_OK;
    case DW_FORM_CLASS_LOCLISTSPTR:
        *s_out = "DW_FORM_CLASS_LOCLISTSPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_RNGLIST:
        *s_out = "DW_FORM_CLASS_RNGLIST";
        return DW_DLV_OK;
    case DW_FORM_CLASS_RNGLISTSPTR:
        *s_out = "DW_FORM_CLASS_RNGLISTSPTR";
        return DW_DLV_OK;
    case DW_FORM_CLASS_STROFFSETSPTR:
        *s_out = "DW_FORM_CLASS_STROFFSETSPTR";
        return DW_DLV_OK;
    default: break;
    }
    return DW_DLV_NO_ENTRY;
}
