*** Settings ***
Library   OMSOrderPlacement   ${var_orderNo}
Library   DatabaseLibrary
Library   Collections
Library   String
Resource     C:/Robot_Vijoy/OMS_Regression/Keyword/Keywords.Robot

*** Variables ***
#${orderNo}   ""
#${DB_CONNECT_STRING} =  'stroms/Petco123@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=CMSOMSDBT01)(PORT=1621))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=OMSSIT01)))'
#${DB_Select_Query} =   Select A.Order_no, a.order_header_key,b.order_line_key,b.ordered_qty from stroms.Yfs_Order_Header a,stroms.Yfs_Order_Line b where a.order_header_key=b.order_header_key and A.Order_no=
${var_orderNo} =   765832063

*** Test Cases ***
OMS_TC_097_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast MA region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_098_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast RI region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_099_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast MD region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_100_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast WV region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_101_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with South VA region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_102_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with South WV region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_103_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with South AL region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_104_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest MT region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_105_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with South LA region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_106_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest TX region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_107_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest NE region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_108_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest NV region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_109_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest WA region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_110_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest CA region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_111_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast OH region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_112_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest SD region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_113_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest UT region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_114_Verify whether Petnet order with Single_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest CO region
   Place a Petnet Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order
