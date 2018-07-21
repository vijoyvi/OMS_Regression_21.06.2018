*** Settings ***
Resource     C:/Robot_Vijoy/OMS_Regression/Keywords/Keywords.Robot
#Test Setup   Test Keyword
#Suite Setup  Test Scenario

*** Test Cases ***


OMS_TC_001_Verify whether Petco order with Single_ Line item and Visa is shipped to DC associated with Northeast MA region
   Place a Regular Petco Order with Single Line Item
   Remove the Hold and Authorize the order
   Connecting to the Oracle Database using Robot Framework
   Schedule and Release the Order
   Full ship the order and check the status of the Order

#OMS_TC_129_Verify whether PO order with Single_ Line item and Visa is shipped to DC associated with Northeast MA region
#  Place a PO Order with Single Line Item
#   Fetch OrderHeaderKey from Oracle database
#   Remove the Hold and Authorize the DFS order
#   Schedule and Release the Order
#   Full ship the order and check the status of the Order
