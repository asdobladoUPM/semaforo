#include <stddef.h>

#include "fsm_semaforo.h"
#include "fsm_semaforo_internal.h"

#include "timer.h"

static fsm_trans_t semaforo_tt[] = {
    {-1, NULL, -1, NULL},
    {-1, NULL, -1, NULL}};

void fsm_semaforo_init(fsm_semaforo_t *f, fsm_semaforo_espira_func_t espira, fsm_semaforo_botonP_func_t botonP, fsm_semaforo_botonS_func_t botonS,
                       int p_verde, int p_amarillo, int p_rojo, int p_peaton, int s_verde, int s_amarillo, int s_rojo, int s_peaton, int deadline){

fsm_init((fsm_t *)f, semaforo_tt);
}