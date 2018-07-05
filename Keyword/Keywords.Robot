*** Settings ***

Library   OMSOrderPlacement   ${var_orderNo}
Library   DatabaseLibrary
Library   Collections
Library   String

*** Variables ***
${orderNo}   ""
${DB_CONNECT_STRING} =  'stroms/Petco123@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=CMSOMSDBT01)(PORT=1621))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=OMSSIT01)))'
${DB_Select_Query} =   Select A.Order_no, a.order_header_key,b.order_line_key,b.ordered_qty from stroms.Yfs_Order_Header a,stroms.Yfs_Order_Line b where a.order_header_key=b.order_header_key and A.Order_no=
${var_orderNo} =   765832063

*** Keywords ***
Place a Regular Petco Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement
    set global variable  ${orderNo}

Place a Repeat Delivery Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameXML   ${lst_ScenarioData}
    setRepeatDeliveryFlag
    ${orderNo}=   orderPlacement
    set global variable  ${orderNo}

Place a Regular Petco Order with Multiple Line Items
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement
    set global variable  ${orderNo}

Place a Repeat Delivery Order with Multiple Line Items
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameXML   ${lst_ScenarioData}
    setRepeatDeliveryFlag
    ${orderNo}=   orderPlacement
    set global variable  ${orderNo}

Place a Mercent Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameMercentXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Mercent
    set global variable  ${orderNo}

Place a Petnet Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    framePetnetXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Regular
    set global variable  ${orderNo}


Remove the Hold and Authorize the order
    authorizeOrder

Connecting to the Oracle Database using Robot Framework
    connect to database using custom params  cx_Oracle  ${DB_CONNECT_STRING}
    @{queryResults}  Query  ${DB_Select_Query}'${orderNo}'
    ${orderLineKey}   set variable   ${queryResults[0][2]}
    FetchOrderLineKey   ${orderLineKey}
    #FetchOrderLineKey  Function present in the Authorize Order class

Schedule and Release the Order
    scheduleOrder
    releaseOrder
    validateReleaseNode

Full ship the order and check the status of the Order
    shipOrder
    #log to console   ***Order is shipped successfully