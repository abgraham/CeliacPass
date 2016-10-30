f = open('countries.txt')
countriesList = []
for line in f: 
    countriesList.append(line.strip())

arrayString = ''
for country in countriesList:
    arrayString += "@\""+country+"\", "

arrayString += "NULL"

print arrayString
