*** Settings ***

Library   OMSOrderPlacement   ${var_orderNo}
Library   DatabaseLibrary
Library   Collections
Library   String
Library  Resources/Excel/foo.py

*** Variables ***
${orderPlacedStatus}   test
${DB_CONNECT_STRING} =  'SITPOSQA/Petco$123@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=CMSOMSDBT01)(PORT=1621))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=OMSSIT01)))'
${DB_Select_Query} =   Select A.Order_no, a.order_header_key,b.order_line_key,b.ordered_qty from stroms.Yfs_Order_Header a,stroms.Yfs_Order_Line b where a.order_header_key=b.order_header_key and A.Order_no=
${var_orderNo} =   706583045

*** Test Cases ***
Verify whether Petco order with Single_ Line item and credit card payment is shipped properly
   Frame Order XML
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

*** Keywords ***
Frame Order XML


Place a Regular Petco Order with Single Line Item
    ${orderPlacedStatus}=   orderPlacement
    #log to console  Order is placed successfully and the status +${orderPlacedStatus}

Remove the Hold and Authorize the order
    #remorseHoldRelease
    authorizeOrder
    #log to console   Hold is removed successfully +${orderPlacedStatus}

Connecting to the Oracle Database using Robot Framework
    connect to database using custom params  cx_Oracle  ${DB_CONNECT_STRING}
    @{queryResults}  Query  ${DB_Select_Query}'${var_orderNo}'
    ${orderLineKey}   set variable   ${queryResults[0][2]}
    log to console  @{queryResults}
    log to console  ${orderLineKey}
    FetchOrderLineKey   ${orderLineKey}
    #FetchOrderLineKey  Function present in the Authorize Order class

Schedule and Release the Order
    scheduleOrder
    releaseOrder
    log to console   ***Order is scheduled and released successfully

Full ship the order and check the status of the Order
    shipOrder
    log to console   ***Order is shipped successfully