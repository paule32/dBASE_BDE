#ifndef _DWARF_ELF_PORT_H
#define _DWARF_ELF_PORT_H

/*  libelf) object access for the generic
    object file interface */

int
dwarf_elf_object_access_init(void *  elf ,
    int libdwarf_owns_elf,
    Dwarf_Obj_Access_Interface**  ret_obj,
    int *err );

void
dwarf_elf_object_access_finish(Dwarf_Obj_Access_Interface*  obj );

/* End ELF object access for the generic object file interface */

#endif
