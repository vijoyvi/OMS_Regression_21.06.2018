str='''<?xml version="1.0" encoding="utf-8"?>
<errors>
    <error errorcode="omp11037"
        errordescription="transaction schedule.0001 is prevented when order is on hold type await_lines_hold."'''

print str

print "error" in str.lower()

if "error" in str.lower():
    print "Test Failed"