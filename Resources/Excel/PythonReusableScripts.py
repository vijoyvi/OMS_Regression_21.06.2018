from xlrd import open_workbook

class OMSReusableScripts:


    def fetchSKUAddressDetails(self,addressType):

        #A global List variable to hold the Excel Sheet Data
        global dict_SKUData
        dict_SKUData = {}

        wb=open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\Data\SKU\DataSheet.xlsx")
        worksheet = wb.sheet_by_index(4)
        rowCtr=1

        while(addressType.lower()<>worksheet.cell(rowCtr, 4).value.lower()):
            rowCtr+=1

        print str(rowCtr)+" is the value of the rowCtr"

        for colCtr in range(worksheet.ncols):
            key=worksheet.cell(0, colCtr).value.lower()
            dict_SKUData[key]=str(worksheet.cell(rowCtr, colCtr).value)
        print dict_SKUData

        #return thisdict

    def framingXMLBody(self,sheetNo):
        global resXML
        resXML = ""

        wb = open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\XML\XML Templates\XML.xlsx")
        worksheet = wb.sheet_by_index(sheetNo)

        for rowCtr in range(worksheet.nrows):
            resXML = resXML+"\n"+worksheet.cell(rowCtr, 0).value

        #return resXML

    def getPaymentMethodData(self, param_cardType):
        global paymentXMLTag
        paymentXMLTag=""
        wb = open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\Data\SKU\DataSheet.xlsx")
        worksheet = wb.sheet_by_index(3)
        rowCtr = 1

        while (param_cardType.lower() <> worksheet.cell(rowCtr, 0).value.lower()):
            rowCtr += 1

        print str(rowCtr) + " is the value of the rowCtr"
        print(worksheet.cell(rowCtr, 0).value)
        paymentXMLTag=worksheet.cell(rowCtr, 1).value


    def InsertPaymentDetails(self):
        global resXML
        #print resXML.find("<PaymentMethods>")
        #print "The length of the string is : "+str(len(resXML))

        resXML = resXML[:resXML.find("<PaymentMethods>") + 16] + paymentXMLTag + resXML[resXML.find("<PaymentMethods>") + 16:]

    def feedingDatainXML(self):
        global resXML
        print dict_SKUData['sku']

        # strXML=resXML

        resXML = resXML.replace(" FirstName=", " FirstName=\"" + dict_SKUData['firstname'] + "\"")
        resXML = resXML.replace(" LastName=", " LastName=\"" + dict_SKUData['lastname'] + "\"")
        resXML = resXML.replace("EMailID=", "EMailID=\"" + dict_SKUData['emailid'] + "\"")
        resXML = resXML.replace(" DayPhone=", " DayPhone=\"" + dict_SKUData['dayphone'] + "\"")
        resXML = resXML.replace(" AddressLine1=", " AddressLine1=\"" + dict_SKUData['addressline1'] + "\"")
        resXML = resXML.replace(" City=", " City=\"" + dict_SKUData['city'] + "\"")
        resXML = resXML.replace(" State=", " State=\"" + dict_SKUData['state'] + "\"")
        resXML = resXML.replace(" Country=", " Country=\"" + dict_SKUData['country'] + "\"")
        resXML = resXML.replace(" ZipCode=", " ZipCode=\"" + dict_SKUData['zipcode'] + "\"")
        resXML = resXML.replace(" LineType=", " LineType=\"" + "PROD" + "\"")

        resXML = resXML.replace(" ItemID=", " ItemID=\"" + dict_SKUData['sku'] + "\"")
        resXML = resXML.replace("ItemDesc=", "ItemDesc=\"" + "Test Description" + "\"")
        resXML = resXML.replace("ItemShortDesc=", "ItemShortDesc=\"" + "TestDescription" + "\"")
        resXML = resXML.replace("ListPrice=", "ListPrice=\"" + "10" + "\"")
        resXML = resXML.replace("RetailPrice=", "RetailPrice=\"" + "10" + "\"")
        resXML = resXML.replace("UnitPrice=", "UnitPrice=\"" + "10" + "\"")
        resXML = resXML.replace("OrderedQty=", "OrderedQty=\"" + dict_SKUData['qty'] + "\"")

        resXML = resXML.replace("MaxChargeLimit=", "MaxChargeLimit=\"" + "10" + "\"")
        resXML = resXML.replace("ProcessedAmount=", "ProcessedAmount=\"" + "10" + "\"")
        resXML = resXML.replace("RequestAmount=", "RequestAmount=\"" + "10" + "\"")

    def frameXML(self,addressType,cardType):

        objReusableScripts=OMSReusableScripts()
        objReusableScripts.fetchSKUAddressDetails(addressType)
        #objReusableScripts.fetchSKUAddressDetails("Southwest NV")

        objReusableScripts.framingXMLBody(0)

        objReusableScripts.getPaymentMethodData(cardType)
        #objReusableScripts.getPaymentMethodData("Master")

        objReusableScripts.InsertPaymentDetails()

        objReusableScripts.feedingDatainXML()
        print resXML

#OMSReusableScripts().frameXML()
