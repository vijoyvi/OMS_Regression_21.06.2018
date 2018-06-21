

class tempClass:



    def A(self):
        global x
        x=0
        print "A"
        print (x)
        x=10


    def B(self):
        print "B"
        print x
        #print "#"+self.temp

tempClass().A()
tempClass().B()