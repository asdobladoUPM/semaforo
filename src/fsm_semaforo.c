#include <stddef.h>

#include "fsm_semaforo.h"
#include "fsm_semaforo_internal.h"

#include "timer.h"

static int fsm_semaforo_check_Button_P(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *);

    if (fp->botonP())
    {
        return fp->botonP();
    }
    return 0;
}
static int fsm_semaforo_check_Button_s(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *);

    if (fp->botons)
    {
    }
    return 0;
}

static fsm_trans_t semaforo_tt[] = {
    {P_VERDE , fsm_semaforo_check_buttonP, P_AMARILLO, fsm_semaforo_set_timeout},
    {P_AMARILLO, fsm_semaforo_check, S_VERDE, fsm_semaforo_set_timeout},
    {S_VERDE, fsm_semaforo_check_buttonS, S_AMARILLO, fsm_semaforo_set_timeout},
    {S_AMARILLO, fsm_semaforo_is_timeout, P_VERDE, fsm_semaforo_reset},
    {-1, NULL, -1, NULL}};

void fsm_semaforo_init(fsm_semaforo_t *f, int A, int B)
{
    fsm_init((fsm_t *)f, semaforo_tt);

    f->p_verde = check;
    f->p_amarillo = check;
    f->p_rojo = check;

    f->p_peaton = check;

    f->s_verde = check;
    f->s_amarillo = check;
    f->s_rojo = check;

    f->s_peaton = check;
}