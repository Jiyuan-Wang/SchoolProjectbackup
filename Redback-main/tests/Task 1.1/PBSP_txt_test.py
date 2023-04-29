import PBSPNew
import codecs
collection = PBSPNew.PBSPextract("D:\Redback\PBSP Tailor.pdf")

table_names = ['table1', 'table2', 'table3', 'table4', 'table5', 'table6', 'table7', 'table8', 
              'table9', 'table10', 'table11', 'table12', 'table13', 'table14', 'table15', 'table16', 'table17']


f = codecs.open('collection.txt','w','utf-8')


for i in range (len(table_names)):
    print(i+1)
    check = str(collection[table_names[i]])
    f.write(check)
    f.write(str('\n'))
    f.write(str('\n'))

print("finish")
f.close()

k = codecs.open('collection_format.txt','w','utf-8')
for i in range (len(table_names)):
    print(i+1)
    check = str(collection[table_names[i]]).replace('{\'','')
    check = check.replace('\': \'','')
    check = check.replace('\'}','')
    check = check.replace('\', \'','')
    check = check.replace('\\n', '')
    check = check.replace('\'], \'', '')
    check = check.replace('\': [\'', '')
    check = check.replace('\']}, \'', '')
    #check = str(collection[table_names[i]]).replace('\':',':\n')
    #check = str(collection[table_names[i]]).replace('],','],\n')
    k.write(check)
    k.write(str('\n'))
    k.write(str('\n'))
  

print("finish")
k.close()
#------------------------------------- for comparison  --------------------------

d = codecs.open('original.txt','r','utf-8')
text = d.readlines()

c = codecs.open('original_format.txt','w','utf-8')
#text = "".join(text)
text = str(text)
text = text.replace('\\n','')
text = text.replace('\\n','')
text = text.replace('--------------------------------','\n\n')
text = text.replace('[\'','')
text = text.replace('\']','')
text = text.replace('\\r\'','')
text = text.replace(', \'','')
print(text)

c.write(text)

d.close()
c.close()
