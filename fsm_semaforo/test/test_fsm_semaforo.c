#include <string.h>

#include "unity.h"

#include "fsm.h"
#include "fsm_semaforo.h"
#include "fsm_semaforo_internal.h"

#include "mock_actions.h"
#include "mock_timer.h"

void setUp(void)
{
}

void tearDown(void)
{
}

void test_fsm_semaforo_fsmInitFillsStructWithSomething(void)
{
    fsm_semaforo_t zero;
    fsm_semaforo_t f;
    bzero(&zero, sizeof(fsm_semaforo_t));
    bzero(&f, sizeof(fsm_semaforo_t));

    fsm_semaforo_init(&f, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0);
    TEST_ASSERT(memcmp(&zero, &f, sizeof(fsm_semaforo_t)) != 0);
}

void test_fsm_semaforo_fsmFireCallsEspiraWhenPVerde(void)
{
    fsm_semaforo_t f;

    espira_ExpectAndReturn(0);

    fsm_semaforo_init(&f, espira, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0);

    TEST_ASSERT(f.fsm.current_state == P_VERDE);
    fsm_fire((fsm_t *)(&f));
}
void test_fsm_semaforo_fsmFireCallsButtonPWhenPVerde(void)
{
    fsm_semaforo_t f;

    botonP_ExpectAndReturn(0);

    fsm_semaforo_init(&f, NULL, botonP, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0);

    TEST_ASSERT(f.fsm.current_state == P_VERDE);
    fsm_fire((fsm_t *)(&f));
}

void test_fsm_semaforo_fsmFireFollowsTransitionWhenPVerdeAndEspiraIsTrue(void)
{

    fsm_semaforo_t f;

    espira_ExpectAndReturn(1);

    fsm_semaforo_init(&f, espira, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 0, 0);

    TEST_ASSERT(f.fsm.current_state == P_VERDE);
    fsm_fire((fsm_t *)(&f));

    TEST_ASSERT(f.fsm.current_state == P_VERTOAM);
}

void test_fsm_semaforo_fsmFireCallsTimerWhenPVerToAm(void)
{
    fsm_semaforo_t f;

    timer_ExpectAndReturn(0);

    fsm_semaforo_init(&f, NULL, NULL, NULL, timer, 0,0,0,0,0,0,0,0,0);
    f.fsm.current_state = P_VERTOAM;

    fsm_fire((fsm_t *)(&f));

    TEST_ASSERT(f.fsm.current_state == P_VERTOAM);
}
void test_fsm_semaforo_fsmFollowsTransitionTimerWhenPVerToAm(void)
{
    fsm_semaforo_t f;

    timer_ExpectAndReturn(100);

    fsm_semaforo_init(&f, NULL, NULL, NULL,timer, 0, 1, 0, 0, 0, 0, 1, 0, 0);
    f.fsm.current_state = P_VERTOAM;
    f.deadline = 1;

    fsm_fire((fsm_t *)(&f));

    TEST_ASSERT(f.fsm.current_state == P_AMARILLO);
}
    void test_fsm_semaforo_fsmFireDontFollowTransitionWhenPVertoAmyAndTimerIsFalse(void)
{
    fsm_semaforo_t f;

    timer_ExpectAndReturn(10);

    fsm_semaforo_init(&f, NULL, NULL, NULL, timer, 0, 1, 0, 0, 0, 0, 1, 0, 0);
    f.fsm.current_state = P_VERTOAM;
    f.deadline = 100;

    fsm_fire((fsm_t *)(&f));

    TEST_ASSERT(f.fsm.current_state == P_VERTOAM);
}
