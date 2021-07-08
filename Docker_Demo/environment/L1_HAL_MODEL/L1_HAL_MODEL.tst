-- VectorCAST 21.sp1 (05/26/21)
-- Test Case Script
--
-- Environment    : L1_HAL_MODEL
-- Unit(s) Under Test: L1_RxTx
--
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:REMOVED_CL_PREFIX
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STANDARD_SPACING_R2
TEST.SCRIPT_FEATURE:OVERLOADED_CONST_SUPPORT
TEST.SCRIPT_FEATURE:UNDERSCORE_NULLPTR
TEST.SCRIPT_FEATURE:FULL_PARAMETER_TYPES
TEST.SCRIPT_FEATURE:STRUCT_DTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STRUCT_FIELD_CTOR_ADDS_POINTER
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
TEST.SCRIPT_FEATURE:VCAST_MAIN_NOT_RENAMED
--

-- Unit: L1_RxTx

-- Subprogram: comm_isr

-- Test Case: Gen_Err
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:Gen_Err
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=RESET_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:RED
TEST.ATTRIBUTES:uut_prototype_stubs.led_ctrl.led_num:INPUT_BASE=10
TEST.END

-- Test Case: Rx
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:Rx
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=RX_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:GREEN
TEST.END

-- Test Case: Rx_Err
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:Rx_Err
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=RX_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:RED
TEST.END

-- Test Case: Tx
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:Tx
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=TX_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:GREEN
TEST.END

-- Test Case: TxRx
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:TxRx
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=TX_LED,MACRO=RX_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:GREEN
TEST.END

-- Test Case: TxRx_Err
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:TxRx_Err
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=TX_LED,MACRO=RX_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:RED
TEST.END

-- Test Case: Tx_Err
TEST.UNIT:L1_RxTx
TEST.SUBPROGRAM:comm_isr
TEST.NEW
TEST.NAME:Tx_Err
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.GeneralErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxErr:1
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxErr:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.TxMsgComplete:0
TEST.VALUE:L1_RxTx.<<GLOBAL>>.g_status_reg.RxMsgPresent:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Device_Reset:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Tx_Ack:1
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.Rx_ack:0
TEST.EXPECTED:L1_RxTx.<<GLOBAL>>.g_command_reg.spare:0
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.led_num:MACRO=TX_LED
TEST.EXPECTED:uut_prototype_stubs.led_ctrl.color:RED
TEST.END
