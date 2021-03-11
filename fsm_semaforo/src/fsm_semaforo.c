#include <stddef.h>

#include "fsm_semaforo.h"
#include "fsm_semaforo_internal.h"

#include "timer.h"

#define TIMEOUT (1)

static int fsm_semaforo_check(fsm_t* f)
{
    fsm_semaforo_t* fp = (fsm_semaforo_t*) ;

    if (fp->check) {
        return fp->check();
    }
    return 0;
}

static int fsm_semaforo_is_timeout(fsm_t* f)
{
    fsm_semaforo_t* fp = (fsm_semaforo_t*)f;
    return (timer_get_tick() >= fp->next_timeout);
}

static void fsm_semaforo_set_timeout(fsm_t* f)
{
    fsm_semaforo_t* fp = (fsm_semaforo_t*)f;
    fp->next_timeout = timer_get_tick() + fp->time_timeout;
}

static void fsm_semaforo_reset(fsm_t* f)
{
    fsm_semaforo_t* fp = (fsm_semaforo_t*)f;
    if (fp->reset) {
        fp->reset();
    }
}

static fsm_trans_t semaforo_tt[] = {
    {READY, fsm_semaforo_check, WAIT, fsm_semaforo_set_timeout},
    {WAIT, fsm_semaforo_is_timeout, READY, fsm_semaforo_reset},
    {-1, NULL, -1, NULL}
};

void fsm_semaforo_init(fsm_semaforo_t* f, fsm_semaforo_check_func_t check, fsm_semaforo_reset_func_t reset, uint32_t timeout)
{
    fsm_init((fsm_t*)f, semaforo_tt);
    f->check = check;
    f->reset = reset;
    f->time_timeout = timeout;
}