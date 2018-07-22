*** Settings ***
Resource     C:/Robot_Vijoy/OMS_Regression/Keywords/Keywords.Robot
#Test Setup   Test Keyword
#Suite Setup  Test Scenario

*** Test Cases ***

OMS_TC_129_Verify whether PO order with Single_ Line item and Visa is shipped to DC associated with Northeast MA region
  Place a PO Order with Single Line Item
  Fetch OrderHeaderKey from Oracle database
  Remove the Hold and Authorize the order
  Schedule and Acknowledge the PO Order
  Ship the PO order and check the status of the Order

OMS_TC_130_Verify whether PO order with Single_ Line item and Visa is shipped to DC associated with Southwest NV region
  Place a PO Order with Single Line Item
  Fetch OrderHeaderKey from Oracle database
  Remove the Hold and Authorize the order
  Schedule and Acknowledge the PO Order
  Ship the PO order and check the status of the Order
