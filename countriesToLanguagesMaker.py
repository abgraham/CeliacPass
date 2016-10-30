 f = open('Countries.txt')
 countriesList = []
 for line in f: 
     countriesList.append(line.strip())

 for country in countriesList:
     print country
     language = raw_input('Language code: ')
     if not language == '':
         countriesToLanguages[country] = language
     print countriesToLanguages