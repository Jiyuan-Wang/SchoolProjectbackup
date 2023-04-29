import DB_API as da
import codecs

# Extract data of the page1 of the PBSP with id = 1
d = da.getPage1(1)
s = str(d)
f = codecs.open('page1.txt','w', 'utf-8')
f.writelines(s)
f.close()

# Extract data of the page2 of the PBSP with id = 1
d = da.getPage2(1)
s = str(d)
f = codecs.open('page2.txt','w', 'utf-8')
f.writelines(s)
f.close()

# Extract data of the page3 of the PBSP with id = 1
d = da.getPage3(1)
s = str(d)
f = codecs.open('page3.txt','w', 'utf-8')
f.writelines(s)
f.close()

# Extract data of the page4 of the PBSP with id = 1
d = da.getPage4(1)
s = str(d)
f = codecs.open('page4.txt','w', 'utf-8')
f.writelines(s)
f.close()

# Extract data of the page5 of the PBSP with id = 1
d = da.getPage5(1)
s = str(d)
f = codecs.open('page5.txt','w', 'utf-8')
f.writelines(s)
f.close()

# Extract data of the page6 of the PBSP with id = 1
d = da.getPage6(1)
s = str(d)
f = codecs.open('page6.txt','w', 'utf-8')
f.writelines(s)
f.close()
