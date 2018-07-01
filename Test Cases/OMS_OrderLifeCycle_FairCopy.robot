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

OMS_TC_006_Verify whether Petco order with Single_ Line item and Discover is shipped to DC associated with South WV region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_007_Verify whether Petco order with Single_ Line item and Gift card is shipped to DC associated with South AL region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_015_Verify whether Petco order with Single_ Line item and Visa is shipped to DC associated with Northeast WV region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_016_Verify whether Petco order with Single_ Line item and Amex is shipped to DC associated with South VA region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_017_Verify whether Petco order with Single_ Line item and Discover is shipped to DC associated with South WV region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_018_Verify whether Petco order with Single_ Line item and Master is shipped to DC associated with South AL region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_069_Verify whether Petco order with Multi_ Line item and Visa is shipped to DC associated with Northeast MA region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_070_Verify whether Petco order with Multi_Line item and Amex is shipped to DC associated with Northeast RI region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_071_Verify whether Petco order with Multi_Line item and Discover is shipped to DC associated with Northeast MD region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_072_Verify whether Petco order with Multi_ Line item and Paypal is shipped to DC associated with Northeast WV region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_073_Verify whether Petco order with Multi_ Line item and Master is shipped to DC associated with South VA region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_074_Verify whether Petco order with Multi_ Line item and Discover is shipped to DC associated with South WV region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_083_Verify whether Petco RD order with Multi_ Line item and Visa is shipped to DC associated with Northeast MA region
   Place a Repeat Delivery Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_084_Verify whether Petco RD order with Multi_ Line item and Amex is shipped to DC associated with Northeast RI region
   Place a Repeat Delivery Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_085_Verify whether Petco RD order with Multi_ Line item and Discover is shipped to DC associated with Northeast MD region
   Place a Repeat Delivery Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_086_Verify whether Petco RD order with Multi_ Line item and Paypal is shipped to DC associated with Northeast WV region
   Place a Repeat Delivery Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_087_Verify whether Petco RD order with Multi_ Line item and Master is shipped to DC associated with South VA region
   Place a Repeat Delivery Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_088_Verify whether Petco RD order with Multi_ Line item and Discover is shipped to DC associated with South WV region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_089_Verify whether Petco RD order with Multi_ Line item and Gift card is shipped to DC associated with South AL region
   Place a Repeat Delivery Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_075_Verify whether Petco order with Multi_ Line item and Gift card is shipped to DC associated with South AL region
   Place a Regular Petco Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_019_Verify whether Petco RD order with Single_ Line item and Visa is shipped to DC associated with Northeast MA region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_020_Verify whether Petco RD order with Single_ Line item and Amex is shipped to DC associated with Northeast RI region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_021_Verify whether Petco RD order with Single_ Line item and Discover is shipped to DC associated with Northeast MD region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_022_Verify whether Petco RD order with Single_ Line item and Paypal is shipped to DC associated with Northeast WV region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_023_Verify whether Petco RD order with Single_ Line item and Master is shipped to DC associated with South VA region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_024_Verify whether Petco RD order with Single_ Line item and Discover is shipped to DC associated with South WV region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_025_Verify whether Petco RD order with Single_ Line item and Gift card is shipped to DC associated with South AL region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_033_Verify whether Petco RD order with Single_ Line item and Visa is shipped to DC associated with Northeast WV region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_034_Verify whether Petco RD order with Single_ Line item and Amex is shipped to DC associated with South VA region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_035_Verify whether Petco RD order with Single_ Line item and Discover is shipped to DC associated with South WV region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_036_Verify whether Petco RD order with Single_ Line item and Master is shipped to DC associated with South AL region
   Place a Repeat Delivery Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order
