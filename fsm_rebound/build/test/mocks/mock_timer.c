/* AUTOGENERATED FILE. DO NOT EDIT. */
#include <string.h>
#include <stdlib.h>
#include <setjmp.h>
#include "cmock.h"
#include "mock_timer.h"

static const char* CMockString_timer_get_tick = "timer_get_tick";

typedef struct _CMOCK_timer_get_tick_CALL_INSTANCE
{
  UNITY_LINE_TYPE LineNumber;
  uint32_t ReturnVal;
  int CallOrder;

} CMOCK_timer_get_tick_CALL_INSTANCE;

static struct mock_timerInstance
{
  char timer_get_tick_IgnoreBool;
  uint32_t timer_get_tick_FinalReturn;
  char timer_get_tick_CallbackBool;
  CMOCK_timer_get_tick_CALLBACK timer_get_tick_CallbackFunctionPointer;
  int timer_get_tick_CallbackCalls;
  CMOCK_MEM_INDEX_TYPE timer_get_tick_CallInstance;
} Mock;

extern jmp_buf AbortFrame;
extern int GlobalExpectCount;
extern int GlobalVerifyOrder;

void mock_timer_Verify(void)
{
  UNITY_LINE_TYPE cmock_line = TEST_LINE_NUM;
  CMOCK_MEM_INDEX_TYPE call_instance;
  call_instance = Mock.timer_get_tick_CallInstance;
  if (Mock.timer_get_tick_IgnoreBool)
    call_instance = CMOCK_GUTS_NONE;
  if (CMOCK_GUTS_NONE != call_instance)
  {
    UNITY_SET_DETAIL(CMockString_timer_get_tick);
    UNITY_TEST_FAIL(cmock_line, CMockStringCalledLess);
  }
  if (Mock.timer_get_tick_CallbackFunctionPointer != NULL)
  {
    call_instance = CMOCK_GUTS_NONE;
    (void)call_instance;
  }
}

void mock_timer_Init(void)
{
  mock_timer_Destroy();
}

void mock_timer_Destroy(void)
{
  CMock_Guts_MemFreeAll();
  memset(&Mock, 0, sizeof(Mock));
  GlobalExpectCount = 0;
  GlobalVerifyOrder = 0;
}

uint32_t timer_get_tick(void)
{
  UNITY_LINE_TYPE cmock_line = TEST_LINE_NUM;
  CMOCK_timer_get_tick_CALL_INSTANCE* cmock_call_instance;
  UNITY_SET_DETAIL(CMockString_timer_get_tick);
  cmock_call_instance = (CMOCK_timer_get_tick_CALL_INSTANCE*)CMock_Guts_GetAddressFor(Mock.timer_get_tick_CallInstance);
  Mock.timer_get_tick_CallInstance = CMock_Guts_MemNext(Mock.timer_get_tick_CallInstance);
  if (Mock.timer_get_tick_IgnoreBool)
  {
    UNITY_CLR_DETAILS();
    if (cmock_call_instance == NULL)
      return Mock.timer_get_tick_FinalReturn;
    Mock.timer_get_tick_FinalReturn = cmock_call_instance->ReturnVal;
    return cmock_call_instance->ReturnVal;
  }
  if (!Mock.timer_get_tick_CallbackBool &&
      Mock.timer_get_tick_CallbackFunctionPointer != NULL)
  {
    uint32_t cmock_cb_ret = Mock.timer_get_tick_CallbackFunctionPointer(Mock.timer_get_tick_CallbackCalls++);
    UNITY_CLR_DETAILS();
    return cmock_cb_ret;
  }
  UNITY_TEST_ASSERT_NOT_NULL(cmock_call_instance, cmock_line, CMockStringCalledMore);
  cmock_line = cmock_call_instance->LineNumber;
  if (cmock_call_instance->CallOrder > ++GlobalVerifyOrder)
    UNITY_TEST_FAIL(cmock_line, CMockStringCalledEarly);
  if (cmock_call_instance->CallOrder < GlobalVerifyOrder)
    UNITY_TEST_FAIL(cmock_line, CMockStringCalledLate);
  if (Mock.timer_get_tick_CallbackFunctionPointer != NULL)
  {
    cmock_call_instance->ReturnVal = Mock.timer_get_tick_CallbackFunctionPointer(Mock.timer_get_tick_CallbackCalls++);
  }
  UNITY_CLR_DETAILS();
  return cmock_call_instance->ReturnVal;
}

void timer_get_tick_CMockIgnoreAndReturn(UNITY_LINE_TYPE cmock_line, uint32_t cmock_to_return)
{
  CMOCK_MEM_INDEX_TYPE cmock_guts_index = CMock_Guts_MemNew(sizeof(CMOCK_timer_get_tick_CALL_INSTANCE));
  CMOCK_timer_get_tick_CALL_INSTANCE* cmock_call_instance = (CMOCK_timer_get_tick_CALL_INSTANCE*)CMock_Guts_GetAddressFor(cmock_guts_index);
  UNITY_TEST_ASSERT_NOT_NULL(cmock_call_instance, cmock_line, CMockStringOutOfMemory);
  memset(cmock_call_instance, 0, sizeof(*cmock_call_instance));
  Mock.timer_get_tick_CallInstance = CMock_Guts_MemChain(Mock.timer_get_tick_CallInstance, cmock_guts_index);
  Mock.timer_get_tick_IgnoreBool = (char)0;
  cmock_call_instance->LineNumber = cmock_line;
  cmock_call_instance->ReturnVal = cmock_to_return;
  Mock.timer_get_tick_IgnoreBool = (char)1;
}

void timer_get_tick_CMockStopIgnore(void)
{
  if(Mock.timer_get_tick_IgnoreBool)
    Mock.timer_get_tick_CallInstance = CMock_Guts_MemNext(Mock.timer_get_tick_CallInstance);
  Mock.timer_get_tick_IgnoreBool = (char)0;
}

void timer_get_tick_CMockExpectAndReturn(UNITY_LINE_TYPE cmock_line, uint32_t cmock_to_return)
{
  CMOCK_MEM_INDEX_TYPE cmock_guts_index = CMock_Guts_MemNew(sizeof(CMOCK_timer_get_tick_CALL_INSTANCE));
  CMOCK_timer_get_tick_CALL_INSTANCE* cmock_call_instance = (CMOCK_timer_get_tick_CALL_INSTANCE*)CMock_Guts_GetAddressFor(cmock_guts_index);
  UNITY_TEST_ASSERT_NOT_NULL(cmock_call_instance, cmock_line, CMockStringOutOfMemory);
  memset(cmock_call_instance, 0, sizeof(*cmock_call_instance));
  Mock.timer_get_tick_CallInstance = CMock_Guts_MemChain(Mock.timer_get_tick_CallInstance, cmock_guts_index);
  Mock.timer_get_tick_IgnoreBool = (char)0;
  cmock_call_instance->LineNumber = cmock_line;
  cmock_call_instance->CallOrder = ++GlobalExpectCount;
  cmock_call_instance->ReturnVal = cmock_to_return;
}

void timer_get_tick_AddCallback(CMOCK_timer_get_tick_CALLBACK Callback)
{
  Mock.timer_get_tick_IgnoreBool = (char)0;
  Mock.timer_get_tick_CallbackBool = (char)1;
  Mock.timer_get_tick_CallbackFunctionPointer = Callback;
}

void timer_get_tick_Stub(CMOCK_timer_get_tick_CALLBACK Callback)
{
  Mock.timer_get_tick_IgnoreBool = (char)0;
  Mock.timer_get_tick_CallbackBool = (char)0;
  Mock.timer_get_tick_CallbackFunctionPointer = Callback;
}

