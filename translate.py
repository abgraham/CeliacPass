# -*- coding: utf-8 -*-
from microsofttranslator import Translator

 translator = Translator('celiacPass', '+gpq62pRXYbq0eAQVb6RhvO4qUpCZKGdaSi+Prov/og=')

 languages = translator.get_languages()

 f = open('country_codes_to_countries.txt')
 codeToTranslation = {}
 for line in f:
     code = line.split(' ')[0]
     codeToTranslation[code] = translator.translate('I have Celiac Disease, a very serious intolerance to gluten, which is found in wheat, oats, barley and rye.', code)
 print codeToTranslation
