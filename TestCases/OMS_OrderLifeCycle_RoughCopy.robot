*** Settings ***
Resource     C:/Robot_Vijoy/OMS_Regression/Keywords/Keywords.Robot
#Test Setup   Test Keyword
#Suite Setup  Test Scenario

*** Test Cases ***
OMS_TC_055_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Northeast MA region
   Place a DFS Order with Multiple Line Items
   Fetch OrderHeaderKey from Oracle database
   Remove the Hold and Authorize the DFS order
   Schedule and Release the Order
   Full ship the order and check the status of the Order

#OMS_TC_068_Verify whether DFS order with Multi_Line items is shipped properly to the DC associated with Southwest CA region
#   Place a DFS Order with Multiple Line Items
#   Fetch OrderHeaderKey from Oracle database
#   Remove the Hold and Authorize the DFS order
#   Schedule and Release the Order
#   Full ship the order and check the status of the Order