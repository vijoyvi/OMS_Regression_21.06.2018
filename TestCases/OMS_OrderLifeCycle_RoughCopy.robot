*** Settings ***
Resource     C:/Robot_Vijoy/OMS_Regression/Keywords/Keywords.Robot
#Test Setup   Test Keyword
#Suite Setup  Test Scenario

*** Test Cases ***

OMS_TC_197_Verify whether Petco_Bundled order with Single_ Line item and Visa is shipped to DC associated with Northeast MA region
   Place a Bundled Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order



