#include <string.h>

#include "fsm.h"
#include "fsm_semaforo.h"

int main()
{
    fsm_semaforo_t f;
    fsm_semaforo_init(&f, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0);

    while (1)
    {
        fsm_fire((fsm_t *)(&f));
    }
}