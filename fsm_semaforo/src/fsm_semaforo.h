#ifndef _FSM_SEMAFORO_H
#define _FSM_SEMAFORO_H

#include <stdint.h>

#include "fsm.h"

typedef int (*fsm_semaforo_espira_func_t)(void);
typedef int (*fsm_semaforo_botonP_func_t)(void);
typedef int (*fsm_semaforo_botonS_func_t)(void);
typedef int (*fsm_semaforo_timer_func_t)(void);

struct _fsm_semaforo_t
{
    fsm_t fsm;

    fsm_semaforo_espira_func_t espira;
    fsm_semaforo_botonP_func_t botonP;
    fsm_semaforo_botonP_func_t botonS;
    fsm_semaforo_timer_func_t timer;

    int p_verde;
    int p_amarillo;
    int p_rojo;
    int p_peaton;

    int s_verde;
    int s_amarillo;
    int s_rojo;
    int s_peaton;

    int deadline;
};
typedef struct _fsm_semaforo_t fsm_semaforo_t;

void fsm_semaforo_init(fsm_semaforo_t *f, fsm_semaforo_espira_func_t espira, fsm_semaforo_botonP_func_t botonP, fsm_semaforo_botonS_func_t botonS,
                       fsm_semaforo_timer_func_t timer, int p_verde, int p_amarillo, int p_rojo, int p_peaton, int s_verde, int s_amarillo, int s_rojo, int s_peaton, int deadline);
void output(fsm_semaforo_t *f, int X, int Y);
#endif // _FSM_SEMAFORO_H
