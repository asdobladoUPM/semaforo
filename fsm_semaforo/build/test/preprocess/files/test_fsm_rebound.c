#include "build/temp/_test_fsm_rebound.c"
#include "mock_timer.h"
#include "mock_client.h"
#include "src/fsm_rebound_internal.h"
#include "src/fsm_rebound.h"
#include "src/fsm.h"
#include "/usr/local/bundle/gems/ceedling-0.30.0/vendor/unity/src/unity.h"








void setUp(void)

{

}



void tearDown(void)

{

}



void test_fsm_rebound_fsmInitFillsStructWithSomething(void)

{

    fsm_rebound_t zero;

    fsm_rebound_t f;

    bzero(&zero, sizeof(fsm_rebound_t));

    bzero(&f, sizeof(fsm_rebound_t));



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 0);

    do {if ((memcmp(&zero, &f, sizeof(fsm_rebound_t)) != 0)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(28)));}} while(0);

}



void test_fsm_rebound_fsmFireCallsCheckWhenReady(void)

{

    fsm_rebound_t f;



    custom_check_CMockExpectAndReturn(35, 0);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 0);



    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(39)));}} while(0);

    fsm_fire((fsm_t*)(&f));

}



void test_fsm_rebound_fsmFireNoCallsCheckWhenWait(void)

{

    fsm_rebound_t f;



    timer_get_tick_CMockIgnoreAndReturn(47, 0);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 0);

    f.fsm.current_state = WAIT;

    fsm_fire((fsm_t*)(&f));

}



void test_fsm_rebound_fsmFireFollowsTransitionWhenReadyAndCheckIsTrue(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(58, 1);

    timer_get_tick_CMockIgnoreAndReturn(59, 0);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 0);

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(64)));}} while(0);

}



void test_fsm_rebound_fsmFireDontFollowTransitionWhenReadyAndCheckIsFalse(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(71, 0);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 0);

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(76)));}} while(0);

}



void test_fsm_rebound_fsmFireCallsGetTickWhenWait(void)

{

    fsm_rebound_t f;



    timer_get_tick_CMockExpectAndReturn(83, 0);



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 0);

    f.fsm.current_state = WAIT;



    fsm_fire((fsm_t*)(&f));

}



void test_fsm_rebound_fsmFireNoCallsGetTickWhenReady(void)

{

    fsm_rebound_t f;



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 0);

    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(96)));}} while(0);

    fsm_fire((fsm_t*)(&f));

}



void test_fsm_rebound_fsmFireFollowsTransitionWhenWaitAndIsTimeout(void)

{

    fsm_rebound_t f;



    timer_get_tick_CMockExpectAndReturn(104, 1);



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 1);

    f.fsm.current_state = WAIT;

    f.next_timeout = 0;



    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(112)));}} while(0);

}



void test_fsm_rebound_fsmFireDontFollowTransitionWhenWaitAndIsNoTimeout(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(119, 1);

    timer_get_tick_CMockExpectAndReturn(120, 0);



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 1);

    f.fsm.current_state = WAIT;

    f.next_timeout = 1;

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(127)));}} while(0);

}



void test_fsm_rebound_fsmFireDontFollowTransitionWhenWaitAndIsTimeoutWithTickNoZero(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(134, 1);

    timer_get_tick_CMockExpectAndReturn(135, 5);



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 1);

    f.fsm.current_state = WAIT;

    f.next_timeout = 5;

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(142)));}} while(0);

}





void test_fsm_rebound_fsmFireDontFollowTransitionWhenWaitAndIsNoTimeoutWithTickNoZero(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(150, 1);

    timer_get_tick_CMockExpectAndReturn(151, 5);



    fsm_rebound_init(&f, 

                        ((void*)0)

                            , 

                              ((void*)0)

                                  , 1);

    f.fsm.current_state = WAIT;

    f.next_timeout = 6;

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(158)));}} while(0);

}



void test_fsm_rebound_fsmFireReadyToWaitUpdatesTimeout(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(165, 1);

    timer_get_tick_CMockExpectAndReturn(166, 5);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 3);

    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(169)));}} while(0);

    f.next_timeout = 0;

    fsm_fire((fsm_t*)(&f));



    UnityAssertEqualNumber((UNITY_INT)((5+3)), (UNITY_INT)((f.next_timeout)), (

   ((void*)0)

   ), (UNITY_UINT)(173), UNITY_DISPLAY_STYLE_INT);

}



void test_fsm_rebound_fsmFireWaitToReadyWhenLongTickPassed(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(180, 1);

    timer_get_tick_CMockExpectAndReturn(181, 20);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 5);

    f.fsm.current_state = WAIT;

    f.next_timeout = 10;

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(188)));}} while(0);

}



void test_fsm_rebound_fsmFireWaitToWaitWhenLongTickPassedNotEnough(void)

{

    fsm_rebound_t f;



    custom_check_CMockIgnoreAndReturn(195, 1);

    timer_get_tick_CMockExpectAndReturn(196, 20);



    fsm_rebound_init(&f, custom_check, 

                                      ((void*)0)

                                          , 5);

    f.fsm.current_state = WAIT;

    f.next_timeout = 30;

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(203)));}} while(0);

}



void test_fsm_rebound_fsmFireWaitToReadyCallsResetFunction(void)

{

    fsm_rebound_t f;



    timer_get_tick_CMockExpectAndReturn(210, 20);

    custom_reset_CMockExpect(211);



    fsm_rebound_init(&f, custom_check, custom_reset, 5);

    f.fsm.current_state = WAIT;

    f.next_timeout = 0;

    fsm_fire((fsm_t*)(&f));



    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(218)));}} while(0);

}



void test_fsm_rebound_fsmFireAntiReboundOf5Complete(void)

{

    fsm_rebound_t f;



    fsm_rebound_init(&f, custom_check, custom_reset, 5);

    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(226)));}} while(0);



    custom_check_CMockExpectAndReturn(228, 0);

    fsm_fire(&(f.fsm));

    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(230)));}} while(0);



    custom_check_CMockExpectAndReturn(232, 1);

    timer_get_tick_CMockExpectAndReturn(233, 20);

    fsm_fire(&(f.fsm));

    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(235)));}} while(0);



    timer_get_tick_CMockExpectAndReturn(237, 22);

    fsm_fire(&(f.fsm));

    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(239)));}} while(0);



    timer_get_tick_CMockExpectAndReturn(241, 24);

    fsm_fire(&(f.fsm));

    do {if ((f.fsm.current_state == WAIT)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(243)));}} while(0);



    timer_get_tick_CMockExpectAndReturn(245, 26);

    custom_reset_CMockExpect(246);

    fsm_fire(&(f.fsm));

    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(248)));}} while(0);



    custom_check_CMockExpectAndReturn(250, 0);

    fsm_fire(&(f.fsm));

    do {if ((f.fsm.current_state == READY)) {} else {UnityFail( ((" Expression Evaluated To FALSE")), (UNITY_UINT)((UNITY_UINT)(252)));}} while(0);



}
