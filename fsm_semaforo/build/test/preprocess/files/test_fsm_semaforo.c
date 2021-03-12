#include "build/temp/_test_fsm_semaforo.c"
#include "build/test/mocks/mock_timer.h"
#include "build/test/mocks/mock_client.h"
#include "src/fsm_semaforo_internal.h"
#include "src/fsm_semaforo.h"
#include "src/fsm.h"
#include "/usr/local/bundle/gems/ceedling-0.30.0/vendor/unity/src/unity.h"








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



    fsm_semaforo_init(&f, 

                         ((void*)0)

                             , 

                               ((void*)0)

                                   , 

                                     ((void*)0)

                                         , 

                                           ((void*)0)

                                               , 1, 0, 0, 0, 0, 0, 1, 0, 0);

    do {if ((memcmp(&zero, &f, sizeof(fsm_semaforo_t)) != 0)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(28)));}} while(0);

}



void test_fsm_semaforo_fsmFireCallsEspiraWhenPVerde(void)

{

    fsm_semaforo_t f;



    espira_CMockExpectAndReturn(35, 0);



    fsm_semaforo_init(&f, espira, 

                                 ((void*)0)

                                     , 

                                       ((void*)0)

                                           , 

                                             ((void*)0)

                                                 , 1, 0, 0, 0, 0, 0, 1, 0, 0);



    do {if ((f.fsm.current_state == P_VERDE)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(39)));}} while(0);

    fsm_fire((fsm_t *)(&f));

}

void test_fsm_semaforo_fsmFireCallsButtonPWhenPVerde(void)

{

    fsm_semaforo_t f;



    botonP_CMockExpectAndReturn(46, 0);



    fsm_semaforo_init(&f, 

                         ((void*)0)

                             , botonP, 

                                       ((void*)0)

                                           , 

                                             ((void*)0)

                                                 , 1, 0, 0, 0, 0, 0, 1, 0, 0);



    do {if ((f.fsm.current_state == P_VERDE)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(50)));}} while(0);

    fsm_fire((fsm_t *)(&f));

}



void test_fsm_semaforo_fsmFireFollowsTransitionWhenPVerdeAndEspiraIsTrue(void)

{



    fsm_semaforo_t f;



    espira_CMockExpectAndReturn(59, 1);



    fsm_semaforo_init(&f, espira, 

                                 ((void*)0)

                                     , 

                                       ((void*)0)

                                           , 

                                             ((void*)0)

                                                 , 1, 0, 0, 0, 0, 0, 1, 0, 0);



    do {if ((f.fsm.current_state == P_VERDE)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(63)));}} while(0);

    fsm_fire((fsm_t *)(&f));



    do {if ((f.fsm.current_state == P_VERTOAM)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(66)));}} while(0);

}



void test_fsm_semaforo_fsmFireCallsTimerWhenPVerToAm(void)

{

    fsm_semaforo_t f;



    timer_CMockExpectAndReturn(73, 0);



    fsm_semaforo_init(&f, 

                         ((void*)0)

                             , 

                               ((void*)0)

                                   , 

                                     ((void*)0)

                                         , timer, 0,0,0,0,0,0,0,0,0);

    f.fsm.current_state = P_VERTOAM;



    fsm_fire((fsm_t *)(&f));



    do {if ((f.fsm.current_state == P_VERTOAM)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(80)));}} while(0);

}

void test_fsm_semaforo_fsmFollowsTransitionTimerWhenPVerToAm(void)

{

    fsm_semaforo_t f;



    timer_CMockExpectAndReturn(86, 100);



    fsm_semaforo_init(&f, 

                         ((void*)0)

                             , 

                               ((void*)0)

                                   , 

                                     ((void*)0)

                                         ,timer, 0, 1, 0, 0, 0, 0, 1, 0, 0);

    f.fsm.current_state = P_VERTOAM;

    f.deadline = 1;



    fsm_fire((fsm_t *)(&f));



    do {if ((f.fsm.current_state == P_AMARILLO)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(94)));}} while(0);

}

    void test_fsm_semaforo_fsmFireDontFollowTransitionWhenPVertoAmyAndTimerIsFalse(void)

{

    fsm_semaforo_t f;



    timer_CMockExpectAndReturn(100, 10);



    fsm_semaforo_init(&f, 

                         ((void*)0)

                             , 

                               ((void*)0)

                                   , 

                                     ((void*)0)

                                         , timer, 0, 1, 0, 0, 0, 0, 1, 0, 0);

    f.fsm.current_state = P_VERTOAM;

    f.deadline = 100;



    fsm_fire((fsm_t *)(&f));



    do {if ((f.fsm.current_state == P_VERTOAM)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(108)));}} while(0);

}
