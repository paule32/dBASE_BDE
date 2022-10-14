#ifndef DWARF_SAFE_STRCPY_H
#define DWARF_SAFE_STRCPY_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*  The pointer arguments are required to be non-null.
    If outlen is zero nothing will be written to out. */
void _dwarf_safe_strcpy(char *out, size_t outlen,
    const char *in, size_t inlen);

#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* DWARF_SAFE_STRCPY_H */
