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
OMS_TC_001_Verify whether Petco order with Single_ Line item and Visa is shipped to DC associated with Northeast MA region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_002_Verify whether Petco order with Single_ Line item and Amex is shipped to DC associated with Northeast RI region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_003_Verify whether Petco order with Single_ Line item and Discover is shipped to DC associated with Northeast MD region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_004_Verify whether Petco order with Single_ Line item and Paypal is shipped to DC associated with Northeast WV region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_005_Verify whether Petco order with Single_ Line item and Master is shipped to DC associated with South VA region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order




