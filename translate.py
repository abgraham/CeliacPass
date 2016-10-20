# -*- coding: utf-8 -*-
from microsofttranslator import Translator

 translator = Translator('celiacPass', '+gpq62pRXYbq0eAQVb6RhvO4qUpCZKGdaSi+Prov/og=')

 languages = translator.get_languages()


 f = open('Countries.txt')
 countriesList = []
 for line in f: 
     countriesList.append(line.strip())

countriesToLanguages = {'Canada': 'en', 'Sao Tome and Principe': 'pt', 'Lithuania': 'lt', 'Bahamas': 'en', 'Saint Kitts and Nevis': 'en', 'Swaziland': 'en', 'Palestine': 'ar', 'Argentina': 'es', 'Cameroon': 'fr', 'Burkina Faso': 'fr', 'Ghana': 'en', 'Saudi Arabia': 'ar', 'Slovenia': 'sl', 'Guatemala': 'es', 'Bosnia and Herzegovina': 'es', 'Kuwait': 'ar', 'Germany': 'de', 'Dominica': 'en', 'Liberia': 'en', 'Netherlands': 'nl', 'Oman': 'ar', 'Tanzania': 'en', 'Cabo Verde': 'pr', 'Gabon': 'fr', 'Monaco': 'fr', 'New Zealand': 'en', 'Yemen': 'ar', 'Jamaica': 'en', 'Samoa': 'en', 'United Arab Emirates': 'ar', 'Azerbaijan': 'tr', 'Lesotho': 'en', 'Saint Vincent and the Grenadines': 'en', 'Kenya': 'en', 'South Korea': 'ko', 'Turkey': 'tr', 'Bangladesh': 'en', 'Mauritania': 'ar', 'Solomon Islands': 'en', 'Saint Lucia': 'en', 'Hungary': 'hu', 'San Marino': 'it', 'France': 'fr', 'Rwanda': 'fr', 'Slovakia': 'sk', 'Somalia': 'ar', 'Peru': 'es', 'Laos': 'fr', 'Nauru': 'en', 'Norway': 'no', "Cote d'Ivoire": 'fr', 'Benin': 'fr', 'Cuba': 'es', 'United States of America': 'en', 'Republic of the Congo': 'fr', 'Togo': 'fr', 'China': 'zh-CHS', 'Dominican Republic': 'es', 'Ukraine': 'uk', 'Bahrain': 'ar', 'Tonga': 'en', 'Finland': 'fi', 'Libya': 'ar', 'Indonesia': 'en', 'Central African Republic': 'fr', 'Liechtenstein': 'de', 'Belarus': 'ru', 'Mali': 'fr', 'Vatican City': 'it', 'Russia': 'ru', 'Romania': 'ro', 'Angola': 'pt', 'Chad': 'fr', 'South Africa': 'en', 'Cyprus': 'el', 'Sweden': 'sv', 'Qatar': 'ar', 'Austria': 'de', 'Vietnam': 'vi', 'Mozambique': 'pt', 'Uganda': 'en', 'Japan': 'ja', 'Niger': 'fr', 'Brazil': 'pt', 'Guinea': 'fr', 'Panama': 'es', 'Costa Rica': 'es', 'Luxembourg': 'fr', 'Andorra': 'pt', 'Ireland': 'en', 'Nigeria': 'en', 'Ecuador': 'es', 'Australia': 'en', 'Iran': 'tr', 'El Salvador': 'es', 'Tuvalu': 'en', 'Chile': 'es', 'Belgium': 'nl', 'Kiribati': 'en', 'Haiti': 'ht', 'Belize': 'en', 'Sierra Leone': 'en', 'Gambia': 'en', 'Philippines': 'en', 'Morocco': 'ar', 'Namibia': 'de', 'Micronesia': 'en', 'Thailand': 'th', 'Switzerland': 'de', 'Grenada': 'en', 'Iraq': 'ar', 'Portugal': 'pt', 'Estonia': 'et', 'Uruguay': 'es', 'Mexico': 'es', 'Lebanon': 'ar', 'Uzbekistan': 'ru', 'Tunisia': 'ar', 'Djibouti': 'fr', 'Antigua and Barbuda': 'en', 'Spain': 'es', 'Colombia': 'es', 'Burundi': 'fr', 'Taiwan': 'zh-CHS', 'Fiji': 'en', 'Barbados': 'en', 'Madagascar': 'fr', 'Italy': 'it', 'Sudan': 'ar', 'Malta': 'en', 'Democratic Republic of the Congo': 'fr', 'Suriname': 'nl', 'Venezuela': 'es', 'Israel': 'he', 'Zambia': 'en', 'Senegal': 'fr', 'Zimbabwe': 'en', 'Jordan': 'ar', 'Denmark': 'da', 'Kazakhstan': 'en', 'Poland': 'pl', 'Eritrea': 'ar', 'Kyrgyzstan': 'ru', 'North Korea': 'ko', 'Trinidad and Tobago': 'en', 'Latvia': 'lv', 'South Sudan': 'en', 'Guyana': 'en', 'Syria': 'ar', 'Honduras': 'es', 'Equatorial Guinea': 'es', 'Egypt': 'ar', 'Nicaragua': 'es', 'Singapore': 'zh-CHS', 'Botswana': 'en', 'United Kingdom': 'en', 'Greece': 'el', 'Paraguay': 'es', 'Comoros': 'ar'}

 objCDict = '{'
 for country in countriesToLanguages.keys():
     objCDict += '@\"'+ country + '\":@\"' + countriesToLanguages[country] + '\", '
 objCDict += '}'
 print objCDict

 f = open('list_of_shit.txt')
 codeToTranslation = {}
 for line in f:
     code = line.split(' ')[0]
     codeToTranslation[code] = translator.translate('I have Celiac Disease, a very serious intolerance to gluten, which is found in wheat, oats, barley and rye.', code)
 print '\nCODES TO TRANSLATION'
 print codeToTranslation

codeToTranslation = {@"el":@"Έχω κοιλιοκάκη, μια πολύ σοβαρή δυσανεξία στη γλουτένη, η οποία βρίσκεται στο σιτάρι, βρώμη, κριθάρι και σίκαλη.", @"en":@"I have Celiac Disease, a very serious intolerance to gluten, which is found in wheat, oats, barley and rye.", @"zh-CHT":@"我有很嚴重的不容忍對麩質，小麥、 燕麥、 大麥和黑麥中發現腹腔疾病。", @"vi":@"Tôi có bệnh Celiac, một rất nghiêm trọng không dung nạp với gluten, được tìm thấy trong lúa mì, yến mạch, lúa mạch và lúa mạch đen.", @"it":@"Ho la malattia celiaca, una molto grave intolleranza al glutine, che si trova nel frumento, avena, orzo e segale.", @"ar":@"لقد مرض الاضطرابات الهضمية، تعصب خطيرة جداً على الغلوتين، الذي يوجد في القمح والشعير والشوفان والجاودار.", @"cs":@"Mám celiakii, velmi vážné nesnášenlivost na lepek, který se nachází v pšenici, oves, ječmen a žito.", @"et":@"Mul on Tsöliaakia, väga tõsine talumatus gluteeni, nisu, kaera, odra ja rukki Acceleration.", @"id":@"Saya memiliki Penyakit Celiac, intoleransi sangat serius terhadap gluten, yang ditemukan di gandum, gandum, barley dan gandum.", @"es":@"Tengo enfermedad celiaca, una intolerancia muy grave al gluten, que se encuentra en trigo, avena, cebada y centeno.", @"ru":@"У меня есть Целиакия, очень серьезная непереносимость клейковины, которая находится в пшеницу, овес, ячмень и рожь.", @"nl":@"Ik heb coeliakie, een zeer ernstige intolerantie voor gluten, die is gevonden in tarwe, haver, gerst en rogge.", @"pt":@"Tenho doença celíaca, uma muito grave intolerância ao glúten, que é encontrado no trigo, aveia, cevada e centeio.", @"no":@"Jeg har cøliaki, en svært alvorlig intoleranse overfor gluten, som finnes i hvete, havre, bygg og rug.", @"tr":@"Çölyak hastalığı, gluten, buğday, yulaf, arpa ve çavdar bulunan için çok ciddi bir hoşgörüsüzlük var.", @"lv":@"Man ir Celiac slimība, ļoti nopietns neiecietības lipekli, kas ir atrodams kviešu, auzu, miežu un rudzu.", @"lt":@"Turiu celiakija, yra labai rimtas netoleruojate glitimo, kuris randamas kviečių, avižų, miežių ir rugių.", @"th":@"โรค Celiac แพ้ที่รุนแรงมากต่อตัง ซึ่งพบได้ในข้าวสาลี ข้าวโอ๊ต ข้าวบาร์เลย์ และข้าวไรย์ ได้", @"ro":@"Am boala celiaca, o intoleranta foarte grave la gluten, care se găseşte în grâu, ovăz, orz şi secară.", @"pl":@"Mam celiakię, bardzo poważnej nietolerancji glutenu, który znajduje się w pszenicy, owsa, jęczmienia i żyta.", @"fr":@"J’ai la maladie coeliaque, une très grave intolérance au gluten, qui se trouve dans le blé, avoine, l’orge et le seigle.", @"de":@"Ich habe Zöliakie, eine sehr schwere Unverträglichkeit gegenüber Gluten, das in Weizen, Hafer, Gerste und Roggen vorkommt.", @"ht":@"Mwen gen Coeliaque move maladi, yon entolerans trè serye pou gluten, ki te twouve nan ble, avwan, grenn lòj ak Rye, Arizona.", @"da":@"Jeg har cøliaki, en meget alvorlig intolerance over for gluten, der findes i hvede, havre, byg og rug.", @"fi":@"Minulla on keliakia, vakava siedä gluteenia, joka löytyy vehnää, kauraa, ohraa ja ruista.", @"hu":@"Van lisztérzékeny, glutén, búza, zab, árpa és rozs található, amely egy nagyon komoly intolerancia.", @"ja":@"セリアック病、グルテンは、小麦、オート麦、大麦、ライ麦は、「非常に深刻なアレルギーがあります。", @"he":@"יש לי מחלת הצליאק, סבילות לגלוטן, המצויה חיטה, שיבולת שועל, שעורה, שיפון רציני מאוד.", @"zh-CHS":@"我有很严重的不容忍对麸质，小麦、 燕麦、 大麦和黑麦中发现腹腔疾病。", @"ko":@"나는 체 강 질병, 글루텐, 밀, 귀리, 보 리 및 호 밀을에서 발견 되는 매우 심각한 편협 있다.", @"sv":@"Jag har celiaki, en mycket allvarlig intolerans mot gluten, som finns i vete, havre, korn och råg.", @"sk":@"Mám celiakii, veľmi vážny neznášanlivosťou lepku, ktorý sa nachádza v pšenice, ovsa, jačmeňa a raže.", @"uk":@"У мене є целиакией, дуже серйозний непереносимість глютену, який знаходиться в пшениця, овес, ячмінь і жито.", @"sl":@"Imam celiakijo, zelo resno nestrpnosti na gluten, ki se nahaja v pšenico, oves, ječmen in rž.", }

objCDict = '{'
for code in codeToTranslation.keys():
    objCDict += '@\"'+ code + '\":@\"' + codeToTranslation[code] + '\", '
objCDict += '}'
print objCDict

 for country in countriesList:
     print country
     language = raw_input('Language code: ')
     if not language == '':
         countriesToLanguages[country] = language
     print countriesToLanguages


print translator.translate("I have Celiac Disease, a very serious intolerance to gluten, which is found in wheat, oats, barley and rye.", "pt")
