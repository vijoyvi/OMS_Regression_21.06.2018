*** Settings ***
Library   DatabaseLibrary
Library   Collections
Library   String
Library   OMSOrderPlacement

*** Variables ***
${orderNo}   ""
${DB_CONNECT_STRING} =  'stroms/Petco123@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=CMSOMSDBT01)(PORT=1621))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=OMSSIT01)))'
${DB_Select_Query} =   Select A.Order_no, a.order_header_key,b.order_line_key,b.ordered_qty from stroms.Yfs_Order_Header a,stroms.Yfs_Order_Line b where a.order_header_key=b.order_header_key and A.Order_no=
${dataSheetpath} =   C:/Robot_Vijoy/OMS_Regression/Resources/Data/Data.xlsx
${xmlPath}=   C:/Robot_Vijoy/OMS_Regression/Resources/Data/OrderType.xlsx


*** Keywords ***
Place a Regular Petco Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
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
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameMercentXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Mercent
    set global variable  ${orderNo}

Place a Mercent Order with Multiple Line Items
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameMercentXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Mercent
    set global variable  ${orderNo}

Place a DFS Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameDFSXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_DFS
    set global variable  ${orderNo}

Place a DFS Order with Multiple Line Items
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameDFSXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_DFS
    set global variable  ${orderNo}

Place a Petnet Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    framePetnetXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Regular
    set global variable  ${orderNo}

Place a Petnet Order with Multi Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    framePetnetXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Regular
    set global variable  ${orderNo}

Place a PO Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    framePOXML  ${lst_ScenarioData}
    ${orderNo}=   orderPlacement_Regular
    set global variable  ${orderNo}

Place a Bundled Order with Single Line Item
    Set Global Variable    ${lst_ScenarioData}    ${empty}
    fetchEnvironmentData   ${dataSheetpath}
    ${ScenarioNumber}=   fetchScenarioNumber   ${TEST NAME}
    ${lst_ScenarioData}=   fetchScenarioData   ${ScenarioNumber}
    frameBundledXML   ${lst_ScenarioData}
    ${orderNo}=   orderPlacement
    set global variable  ${orderNo}

Remove the Hold and Authorize the order
    authorizeOrder

Remove the Hold and Authorize the DFS order
    authorizeOrder
    awaitLineHoldCheck
    awaitLineHoldRelease   "DFS_EDI"

Connecting to the Oracle Database using Robot Framework
    connect to database using custom params  cx_Oracle  ${DB_CONNECT_STRING}
    @{queryResults}  Query  ${DB_Select_Query}'${orderNo}'
    ${orderLineKey}   set variable   ${queryResults[0][2]}
    FetchOrderLineKey   ${orderLineKey}
    #FetchOrderLineKey  Function present in the Authorize Order class

Fetch OrderHeaderKey from Oracle database
    connect to database using custom params  cx_Oracle  ${DB_CONNECT_STRING}
    @{queryResults}  Query  ${DB_Select_Query}'${orderNo}'
    ${orderHdrKey}   set variable   ${queryResults[0][1]}
    SetOrderHdrKey   ${orderHdrKey}

Schedule and Release the Order
    scheduleOrder
    releaseOrder
    validateReleaseNode

Schedule and Acknowledge the PO Order
    scheduleOrder
    releaseOrder
    validateReleaseNode


Full ship the order and check the status of the Order
    shipOrder

Ship the PO order and check the status of the Order
    ${chainedOrderNumber}=  createChainedOrder
    acknowledgePO
    shipPOOrder   ${chainedOrderNumber}

    #log to console   ***Order is shipped successfully

#Test Keyword
#    testScript
#
#Test Scenario
#    testScenario
