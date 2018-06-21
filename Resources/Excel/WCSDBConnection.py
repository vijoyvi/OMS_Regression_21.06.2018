import cx_Oracle;

conn=cx_Oracle.connect('wcs/Petco123@cmswcdbt01.petc.com:1621/WCSIT01')

cur=conn.cursor()
cur.execute("""Select A.PARTNUMBER, A.CATENTRY_ID, B.Name, B.SHORTDESCRIPTION,C.PUBLISHED,min(D.PRICE) from 
wcs.catentry A,wcs.catentdesc B,wcs.offer C,wcs.offerprice D  where 
A.CATENTRY_ID=B.CATENTRY_ID and 
A.CATENTRY_ID=C.CATENTRY_ID and  
C.OFFER_ID=D.OFFER_ID and 
C.PUBLISHED='1' and 
A.partnumber in ('2323250','283770') 
group by A.PARTNUMBER, A.CATENTRY_ID, B.Name, B.SHORTDESCRIPTION,C.PUBLISHED""");

for line in cur:
    print line