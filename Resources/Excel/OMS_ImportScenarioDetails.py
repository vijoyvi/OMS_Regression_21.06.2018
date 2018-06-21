from xlrd import open_workbook

class OMS_ImportScenarioDetails:

    def fetchEnvironmentData(self):
        global dict_EnvironmentData
        dict_EnvironmentData = {}

        wb = open_workbook("C:\Robot_Vijoy\OMS_Regression\Resources\Data\DataSheet.xlsx")
        worksheet = wb.sheet_by_index(0)
        colCtr = 2

        while (worksheet.cell(2, colCtr).value.lower()<>"y"):
            colCtr += 1

        print str(colCtr) + " is the value of the colCtr of Environment sheet"

        print str(worksheet.nrows)

        for rowCtr in range(worksheet.nrows):
            key = worksheet.cell(rowCtr, 1).value.lower()
            dict_EnvironmentData[key] = str(worksheet.cell(rowCtr, colCtr).value)
            #self.EnvironmentURL=dict_EnvironmentData

            #http: // cmsomsappt01:9080 / smcfs / interop / InteropHttpServlet
        #print dict_EnvironmentData['protocol']+"://"+dict_EnvironmentData['server name']+":"+dict_EnvironmentData['port number']+dict_EnvironmentData['path']
        self.targetURL=dict_EnvironmentData['protocol']+"://"+dict_EnvironmentData['server name']+":"+dict_EnvironmentData['port number']+dict_EnvironmentData['path']
        self.Environment=dict_EnvironmentData['environment']

        print "Selected Environment: "+self.Environment
        print "Target URL: "+self.targetURL

OMS_ImportScenarioDetails().fetchEnvironmentData()