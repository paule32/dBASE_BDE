#ifndef DWARF_ELF_REL_DETECTOR_H
#define DWARF_ELF_REL_DETECTOR_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

unsigned _dwarf_is_32bit_abs_reloc(unsigned int type,
    unsigned machine);
unsigned _dwarf_is_64bit_abs_reloc(unsigned int type,
    unsigned machine);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* DWARF_ELF_REL_DETECTOR_H */
