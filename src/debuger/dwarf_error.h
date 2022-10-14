
#ifndef DWARF_ERROR_H
#define DWARF_ERROR_H
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

void _dwarf_error(Dwarf_Debug dbg, Dwarf_Error * error,
    Dwarf_Signed errval);
void _dwarf_error_string(Dwarf_Debug dbg, Dwarf_Error * error,
    Dwarf_Signed errval, char *msg);

#define DWARF_DBG_ERROR(dbg,errval,retval) \
    _dwarf_error((dbg), error, (errval)); return(retval);

#define DE_STANDARD 0 /* Normal alloc attached to dbg. */
#define DE_STATIC 1   /* Using global static var */
#define DE_MALLOC 2   /* Using malloc space */
struct Dwarf_Error_s {
    Dwarf_Signed er_errval;
    void       * er_msg;

    /*  If non-zero the Dwarf_Error_s struct is not malloc'd.
        To aid when malloc returns NULL.
        If zero a normal dwarf_dealloc will work.
        er_static_alloc only accessed by dwarf_alloc.c.

        If er_static_alloc is 1 in a Dwarf_Error_s
        struct (set by libdwarf) and client code accidentally
        turns that 0 to zero through a wild
        pointer reference (the field is hidden
        from clients...) then chaos will
        eventually follow.
    */
    int er_static_alloc;
};
extern struct Dwarf_Error_s _dwarf_failsafe_error;

#ifdef __cplusplus
}
#endif /* __cplusplus */
#endif /* DWARF_ERROR_H */
