#include <stddef.h>

#include "fsm_semaforo.h"
#include "fsm_semaforo_internal.h"

#include "timer.h"

static int espiraObotonP(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;

    if (fp->espira)
    {
        return fp->espira();
    }
    if (fp->botonP)
    {
        return fp->botonP();
    }
    return 0;
};

static int deadline(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    return (timer() > fp->deadline);
};
static int botonSoDeadline(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;

    if (fp->botonS)
    {
        if ((fp->botonS()) && (timer() < (fp->deadline) - 10))
        {
            return 1;
        }
    }
    return 0;
};

static void T1(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    fp->deadline = 10;
};

static void T2(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    fp->deadline = 10;

    output(fp, 1, 0);
};

static void T3(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    fp->deadline = 60;

    output(fp, 0, 0);
};
static void T4(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    fp->deadline = 10;
};
static void T5(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    fp->deadline = 5;

    output(fp, 1, 1);
};
static void T6(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;
    fp->deadline = 5;

    output(fp, 1, 1);
};
static void T7(fsm_t *f)
{
    fsm_semaforo_t *fp = (fsm_semaforo_t *)f;

    output(fp, 1, 0);
};
void output(fsm_semaforo_t *f, int X, int Y)
{

    f->p_verde = X && (!Y);
    f->p_amarillo = (!X) && Y;
    f->p_rojo = ((!X) && (!Y)) || (X && Y);
    f->p_peaton = (!X) && (!Y);

    f->s_verde = f->p_peaton;
    f->s_amarillo = X && Y;
    f->s_rojo = (X && (!Y)) || (!X && Y);
    f->s_peaton = X && (!Y);
};

static fsm_trans_t semaforo_tt[] = {
    {P_VERDE, espiraObotonP, P_VERTOAM, T1},
    {P_VERTOAM, deadline, P_AMARILLO, T2},
    {P_AMARILLO, deadline, S_VERDE, T3},
    {S_VERDE, botonSoDeadline, S_VERTOAM, T4},
    {S_VERDE, deadline, S_AMARILLO, T5},
    {S_VERTOAM, deadline, S_AMARILLO, T6},
    {S_AMARILLO, deadline, P_VERDE, T7},
    {-1, NULL, -1, NULL}};

void fsm_semaforo_init(fsm_semaforo_t *f, fsm_semaforo_espira_func_t espira, fsm_semaforo_botonP_func_t botonP, fsm_semaforo_botonS_func_t botonS,
                       int p_verde, int p_amarillo, int p_rojo, int p_peaton, int s_verde, int s_amarillo, int s_rojo, int s_peaton, int deadline)
{

    fsm_init((fsm_t *)f, semaforo_tt);
}