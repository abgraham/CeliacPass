codeToTranslation = {@"el":@"Έχω κοιλιοκάκη, μια πολύ σοβαρή δυσανεξία στη γλουτένη, η οποία βρίσκεται στο σιτάρι, βρώμη, κριθάρι και σίκαλη.", @"en":@"I have Celiac Disease, a very serious intolerance to gluten, which is found in wheat, oats, barley and rye.", @"zh-CHT":@"我有很嚴重的不容忍對麩質，小麥、 燕麥、 大麥和黑麥中發現腹腔疾病。", @"vi":@"Tôi có bệnh Celiac, một rất nghiêm trọng không dung nạp với gluten, được tìm thấy trong lúa mì, yến mạch, lúa mạch và lúa mạch đen.", @"it":@"Ho la malattia celiaca, una molto grave intolleranza al glutine, che si trova nel frumento, avena, orzo e segale.", @"ar":@"لقد مرض الاضطرابات الهضمية، تعصب خطيرة جداً على الغلوتين، الذي يوجد في القمح والشعير والشوفان والجاودار.", @"cs":@"Mám celiakii, velmi vážné nesnášenlivost na lepek, který se nachází v pšenici, oves, ječmen a žito.", @"et":@"Mul on Tsöliaakia, väga tõsine talumatus gluteeni, nisu, kaera, odra ja rukki Acceleration.", @"id":@"Saya memiliki Penyakit Celiac, intoleransi sangat serius terhadap gluten, yang ditemukan di gandum, gandum, barley dan gandum.", @"es":@"Tengo enfermedad celiaca, una intolerancia muy grave al gluten, que se encuentra en trigo, avena, cebada y centeno.", @"ru":@"У меня есть Целиакия, очень серьезная непереносимость клейковины, которая находится в пшеницу, овес, ячмень и рожь.", @"nl":@"Ik heb coeliakie, een zeer ernstige intolerantie voor gluten, die is gevonden in tarwe, haver, gerst en rogge.", @"pt":@"Tenho doença celíaca, uma muito grave intolerância ao glúten, que é encontrado no trigo, aveia, cevada e centeio.", @"no":@"Jeg har cøliaki, en svært alvorlig intoleranse overfor gluten, som finnes i hvete, havre, bygg og rug.", @"tr":@"Çölyak hastalığı, gluten, buğday, yulaf, arpa ve çavdar bulunan için çok ciddi bir hoşgörüsüzlük var.", @"lv":@"Man ir Celiac slimība, ļoti nopietns neiecietības lipekli, kas ir atrodams kviešu, auzu, miežu un rudzu.", @"lt":@"Turiu celiakija, yra labai rimtas netoleruojate glitimo, kuris randamas kviečių, avižų, miežių ir rugių.", @"th":@"โรค Celiac แพ้ที่รุนแรงมากต่อตัง ซึ่งพบได้ในข้าวสาลี ข้าวโอ๊ต ข้าวบาร์เลย์ และข้าวไรย์ ได้", @"ro":@"Am boala celiaca, o intoleranta foarte grave la gluten, care se găseşte în grâu, ovăz, orz şi secară.", @"pl":@"Mam celiakię, bardzo poważnej nietolerancji glutenu, który znajduje się w pszenicy, owsa, jęczmienia i żyta.", @"fr":@"J’ai la maladie coeliaque, une très grave intolérance au gluten, qui se trouve dans le blé, avoine, l’orge et le seigle.", @"de":@"Ich habe Zöliakie, eine sehr schwere Unverträglichkeit gegenüber Gluten, das in Weizen, Hafer, Gerste und Roggen vorkommt.", @"ht":@"Mwen gen Coeliaque move maladi, yon entolerans trè serye pou gluten, ki te twouve nan ble, avwan, grenn lòj ak Rye, Arizona.", @"da":@"Jeg har cøliaki, en meget alvorlig intolerance over for gluten, der findes i hvede, havre, byg og rug.", @"fi":@"Minulla on keliakia, vakava siedä gluteenia, joka löytyy vehnää, kauraa, ohraa ja ruista.", @"hu":@"Van lisztérzékeny, glutén, búza, zab, árpa és rozs található, amely egy nagyon komoly intolerancia.", @"ja":@"セリアック病、グルテンは、小麦、オート麦、大麦、ライ麦は、「非常に深刻なアレルギーがあります。", @"he":@"יש לי מחלת הצליאק, סבילות לגלוטן, המצויה חיטה, שיבולת שועל, שעורה, שיפון רציני מאוד.", @"zh-CHS":@"我有很严重的不容忍对麸质，小麦、 燕麦、 大麦和黑麦中发现腹腔疾病。", @"ko":@"나는 체 강 질병, 글루텐, 밀, 귀리, 보 리 및 호 밀을에서 발견 되는 매우 심각한 편협 있다.", @"sv":@"Jag har celiaki, en mycket allvarlig intolerans mot gluten, som finns i vete, havre, korn och råg.", @"sk":@"Mám celiakii, veľmi vážny neznášanlivosťou lepku, ktorý sa nachádza v pšenice, ovsa, jačmeňa a raže.", @"uk":@"У мене є целиакией, дуже серйозний непереносимість глютену, який знаходиться в пшениця, овес, ячмінь і жито.", @"sl":@"Imam celiakijo, zelo resno nestrpnosti na gluten, ki se nahaja v pšenico, oves, ječmen in rž.", }

objCDict = '{'
for code in codeToTranslation.keys():
    objCDict += '@\"'+ code + '\":@\"' + codeToTranslation[code] + '\", '
objCDict += '}'
print objCDict