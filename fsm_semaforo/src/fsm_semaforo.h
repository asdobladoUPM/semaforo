#ifndef FSM_semaforo_H
#define FSM_semaforo_H

#include <stdint.h>

#include "fsm.h"

typedef int (*fsm_semaforo_check_func_t) (void);
typedef void (*fsm_semaforo_reset_func_t) (void);

struct _fsm_semaforo_t {
    fsm_t fsm;
    fsm_semaforo_check_func_t check;
    fsm_semaforo_reset_func_t reset;
    uint32_t time_timeout;
    uint32_t next_timeout;
};
typedef struct _fsm_semaforo_t fsm_semaforo_t;

void fsm_semaforo_init(fsm_semaforo_t* f, fsm_semaforo_check_func_t check, fsm_semaforo_reset_func_t reset, uint32_t timeout);


#endif // FSM_semaforo_H
