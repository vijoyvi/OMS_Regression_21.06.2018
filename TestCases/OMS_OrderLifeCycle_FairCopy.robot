*** Settings ***
Library   OMSOrderPlacement   ${var_orderNo}
Library   DatabaseLibrary
Library   Collections
Library   String
#Resource     C:/Robot_Vijoy/OMS_Regression/Keyword/Keywords.Robot
Resource     C:/Robot_Vijoy/OMS_Regression/Keywords/Keywords.Robot

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

#Frame Scenarios
OMS_TC_147_Verify whether Mercent order with Single_Line item is shipped properly to the DC associated with Northeast MA region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_148_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Northeast RI region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_149_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Northeast MD region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_150_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Northeast WV region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_151_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with South VA region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_152_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with South WV region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_153_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with South AL region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_154_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Northwest MT region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_155_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with South LA region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_156_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Southwest TX region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_157_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Northwest NE region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_158_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Southwest NV region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_159_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Northwest WA region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_160_Verify whether Mercent order with Single_ Line item is shipped properly to the DC associated with Southwest CA region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_161_Verify whether Mercent order with Single_ Line item and Visa is shipped to DC associated with Northeast OH region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_162_Verify whether Mercent order with Single_ Line item and Visa is shipped to DC associated with Northwest SD region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_163_Verify whether Mercent order with Single_ Line item and Visa is shipped to DC associated with Southwest UT region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_164_Verify whether Mercent order with Single_ Line item and Visa is shipped to DC associated with Northwest CO region
   Place a Mercent Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_165_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northeast MA region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_166_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northeast RI region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_167_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northeast MD region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_168_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northeast WV region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_169_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with South VA region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_170_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with South WV region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_171_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with South AL region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_172_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northwest MT region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_173_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with South LA region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_174_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Southwest TX region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_175_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northwest NE region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_176_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Southwest NV region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_177_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Northwest WA region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_178_Verify whether Mercent order with Multi_Line items is shipped properly to the DC associated with Southwest CA region
   Place a Mercent Order with Multiple Line Items
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

#Petnet Scenarios
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

OMS_TC_115_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast MA region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_115_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast MA region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_116_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast RI region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_117_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast MD region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order


OMS_TC_118_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northeast WV region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_119_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with South VA region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_120_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with South WV region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_121_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with South AL region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order
OMS_TC_122_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest MT region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_123_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with South LA region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_124_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest TX region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_125_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest NE region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_126_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest NV region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_127_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Northwest WA region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_128_Verify whether Petnet order with Multi_Line item is shipped to DC 198 only when it is placed with the address associated with Southwest CA region
   Place a Petnet Order with Multi Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

#DFS Scenarios
OMS_TC_037_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northeast MA region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_038_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northeast RI region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_039_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northeast MD region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_040_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northeast WV region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_041_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with South VA region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_042_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with South WV region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_043_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with South AL region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_044_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northwest MT region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_045_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with South LA region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_046_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Southwest TX region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_047_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northwest NE region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_048_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Southwest NV region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_049_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Northwest WA region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_050_Verify whether DFS order with Single_ Line item is shipped properly to the DC associated with Southwest CA region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_051_Verify whether DFS order with Single_ Line item is shipped properly to DC associated with Northeast OH region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_052_Verify whether DFS order with Single_ Line item is shipped properly to DC associated with Northwest SD region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_053_Verify whether DFS order with Single_ Line item is shipped properly to DC associated with Southwest UT region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_054_Verify whether DFS order with Single_ Line item is shipped properly to DC associated with Northwest CO region
   Place a DFS Order with Single Line Item
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

#DFS Scenarios with Multi Line Items
OMS_TC_055_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northeast MA region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_056_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northeast RI region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_057_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northeast MD region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_058_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northeast WV region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_059_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with South VA region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_060_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with South WV region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_061_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with South AL region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_062_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northwest MT region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_063_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with South LA region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_064_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Southwest TX region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_065_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northwest NE region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_066_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Southwest NV region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_067_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northwest WA region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

OMS_TC_068_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Southwest CA region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order