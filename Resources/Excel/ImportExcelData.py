from xlrd import open_workbook

class classReadExcelData:

    a="Old"
    #strXML=""


    # def __init__(self,paymentType):
    #     self.paymentType=paymentType
    #     self.resXML=""
    #     #self.thisdict=dict()

    #@staticmethod
    def fetchSKUAddressDetails(self,paymentType):

        wb=open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\Data\SKU\DataSheet.xlsx")
        worksheet = wb.sheet_by_index(4)
        rowCtr=1
        #paymentType=self.paymentType
        while(paymentType.lower()<>worksheet.cell(rowCtr, 4).value.lower()):
            rowCtr+=1

        print str(rowCtr)+" is the value of the rowCtr"

        #worksheet.cell(0, 0).value
        #print wb.nsheets
        #print "The number of rows in the Sheet : "+str(worksheet.nrows)+" and the number of columns : "+str(worksheet.ncols)
        global thisdict
        thisdict={}

        colCtr=0

        for colCtr in range(worksheet.ncols):
            key=worksheet.cell(0, colCtr).value.lower()
            thisdict[key]=str(worksheet.cell(rowCtr, colCtr).value)
        print thisdict
        #testLis=thisdict
        #print self.thisdict['sku']
        print self.a
        return thisdict

    def framingXMLBody(self,sheetNo):
        #print self.thisdict
        wb = open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\XML\XML Templates\XML.xlsx")
        worksheet = wb.sheet_by_index(sheetNo)
        rowCtr = 0
        resXML=""
        for rowCtr in range(worksheet.nrows):
            resXML = resXML+"\n"+worksheet.cell(rowCtr, 0).value

        self.resXML=resXML
        return resXML

    def feedingDatainXML(self,param_thisdict,param_strXML):
        print param_thisdict['sku']

        #strXML=param_strXML

        param_strXML = param_strXML.replace(" FirstName=", " FirstName=\"" + param_thisdict['firstname'] + "\"")
        param_strXML = param_strXML.replace(" LastName=", " LastName=\"" + param_thisdict['lastname'] + "\"")
        param_strXML = param_strXML.replace("EMailID=", "EMailID=\"" + param_thisdict['emailid'] + "\"")
        param_strXML = param_strXML.replace(" DayPhone=", " DayPhone=\"" + param_thisdict['dayphone'] + "\"")
        param_strXML = param_strXML.replace(" AddressLine1="," AddressLine1=\"" + param_thisdict['addressline1'] + "\"")
        param_strXML = param_strXML.replace(" City=", " City=\"" + param_thisdict['city'] + "\"")
        param_strXML = param_strXML.replace(" State=", " State=\"" + param_thisdict['state'] + "\"")
        param_strXML = param_strXML.replace(" Country=", " Country=\"" + param_thisdict['country'] + "\"")
        param_strXML = param_strXML.replace(" ZipCode=", " ZipCode=\"" + param_thisdict['zipcode'] + "\"")
        param_strXML = param_strXML.replace(" LineType=", " LineType=\"" + "PROD" + "\"")

        param_strXML=param_strXML.replace(" ItemID=", " ItemID=\""+param_thisdict['sku']+"\"")
        param_strXML = param_strXML.replace("ItemDesc=", "ItemDesc=\"" + "Test Description" + "\"")
        param_strXML = param_strXML.replace("ItemShortDesc=", "ItemShortDesc=\"" + "TestDescription" + "\"")
        param_strXML = param_strXML.replace("ListPrice=", "ListPrice=\"" + "10" + "\"")
        param_strXML = param_strXML.replace("RetailPrice=", "RetailPrice=\"" + "10" + "\"")
        param_strXML = param_strXML.replace("UnitPrice=", "UnitPrice=\"" + "10" + "\"")
        param_strXML = param_strXML.replace("OrderedQty=", "OrderedQty=\"" + param_thisdict['qty'] + "\"")

        param_strXML = param_strXML.replace("MaxChargeLimit=", "MaxChargeLimit=\"" + "10" + "\"")
        param_strXML = param_strXML.replace("ProcessedAmount=", "ProcessedAmount=\"" + "10" + "\"")
        param_strXML = param_strXML.replace("RequestAmount=", "RequestAmount=\"" + "10" + "\"")

        print param_strXML
        self.finalStrXML=param_strXML

        print self.a+":) Its all in the game"
        return ""

    def getPaymentMethodData(self,param_cardType):
        wb = open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\Data\SKU\DataSheet.xlsx")
        worksheet = wb.sheet_by_index(3)
        rowCtr = 1

        while (param_cardType.lower() <> worksheet.cell(rowCtr, 0).value.lower()):
            rowCtr += 1

        print str(rowCtr) + " is the value of the rowCtr"
        print(worksheet.cell(rowCtr, 0).value)
        return worksheet.cell(rowCtr, 1).value

    def InsertPaymentDetails(self,paymentXML):
        print self.finalStrXML.find("<PaymentMethods>")
        print "The length of the string is : "+str(len(self.finalStrXML))
        #print "Position of the string to be found: "+str(strXML.find("<PaymentMethods>"))
        #print strXML[:-(len(strXML)-strXML.find("<PaymentMethods>"))]

        #print strXML[:strXML.find("<PaymentMethods>")+16]
        #print "****************************************************************************"
        #print paymentXML
        #print strXML[strXML.find("<PaymentMethods>") + 16:]

        self.finalStrXML=self.finalStrXML[:self.finalStrXML.find("<PaymentMethods>")+16]+paymentXML+self.finalStrXML[self.finalStrXML.find("<PaymentMethods>") + 16:]

        #print self.finalStrXML

        return self.finalStrXML

    # def frameXML(self):
    #     lstSKUDetails = classReadExcelData().fetchSKUAddressDetails("Southwest NV")
    #     print lstSKUDetails['sku']
    #
    #     strXML = classReadExcelData().framingXMLBody(0)
    #
    #     paymentXML = classReadExcelData().getPaymentMethodData("Master")
    #
    #     finalStrXML = classReadExcelData().InsertPaymentDetails(paymentXML)
    #
    #     lstVJ = classReadExcelData().feedingDatainXML(lstSKUDetails, finalStrXML)


lstSKUDetails=classReadExcelData().fetchSKUAddressDetails("Southwest NV")
print lstSKUDetails['sku']
print thisdict['sku']

# classReadExcelData().framingXMLBody(0)
#
# paymentXML=classReadExcelData().getPaymentMethodData("Master")
#
# finalStrXML=classReadExcelData().InsertPaymentDetails(paymentXML)
#
# lstVJ=classReadExcelData().feedingDatainXML(lstSKUDetails,finalStrXML)






#print lstVJ