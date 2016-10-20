//
//  ViewController.m
//  CeliacPass
//
//  Created by Annie Graham on 10/14/16.
//  Copyright © 2016 Annie Graham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) NSDictionary *countryToCode;
@property (strong, nonatomic) NSDictionary *codeToTranslation;
@property (weak, nonatomic) IBOutlet UITextField *writeInCountry;
@property (weak, nonatomic) IBOutlet UITextView *cardText;
@property (strong, nonatomic) NSString *country;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpData];
    self.cardText.editable = NO;
    [self.cardText setScrollEnabled:NO];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager requestWhenInUseAuthorization];
    [self.locationManager requestAlwaysAuthorization];
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    [self.locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError: %@", error);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    NSLog(@"%@", [locations lastObject]);
    [self.locationManager stopUpdatingLocation];
    CLGeocoder *ceo = [CLGeocoder new];
    [ceo reverseGeocodeLocation:[locations lastObject] completionHandler:^(NSArray *placemarks, NSError *error) {
        NSLog(@"Found placemarks: %@, error: %@", placemarks, error);
        if (error == nil && [placemarks count] > 0) {
            CLPlacemark *placemark = [placemarks lastObject];
            self.country = [NSString stringWithFormat:@"%@", placemark.country];
            self.cardText.text = [self translation:self.country];
        } else {
            NSLog(@"%@", error.debugDescription);
        }
    } ];
}

- (NSString *)translation:(NSString *)country {

    NSLog(@"Country: %@", country);
    NSString *code = [self.countryToCode objectForKey:country];
    NSLog(@"Code: %@", code);

    NSLog(@"Translation: %@", [self.codeToTranslation objectForKey:code]);
    NSString *translation = [self.codeToTranslation objectForKey:code];
    if (translation) {
        return translation;
    }
    return @"We're sorry, we could not translate the language associated with your country";
}

- (void)setUpData {
    self.countryToCode = @{@"Canada":@"en", @"Brazil":@"pt", @"Sao Tome and Principe":@"pt", @"Kuwait":@"ar", @"Panama":@"es", @"Ireland":@"en", @"Lithuania":@"lt", @"Costa Rica":@"es", @"Luxembourg":@"fr", @"Republic of the Congo":@"fr", @"Bahamas":@"en", @"Switzerland":@"de", @"Swaziland":@"en", @"Syria":@"ar", @"Palestine":@"ar", @"Argentina":@"es", @"Cameroon":@"fr", @"Burkina Faso":@"fr", @"Ecuador":@"es", @"Ghana":@"en", @"Saudi Arabia":@"ar", @"Belarus":@"ru", @"Iran":@"tr", @"El Salvador":@"es", @"Tuvalu":@"en", @"Japan":@"ja", @"Gambia":@"en", @"Jordan":@"ar", @"Slovenia":@"sl", @"Guatemala":@"es", @"Bosnia and Herzegovina":@"es", @"Chile":@"es", @"Guinea":@"fr", @"Belgium":@"nl", @"China":@"zh-CHS", @"Haiti":@"ht", @"Belize":@"en", @"Sierra Leone":@"en", @"Dominica":@"en", @"Australia":@"en", @"Liberia":@"en", @"Netherlands":@"nl", @"Paraguay":@"es", @"Taiwan":@"zh-CHS", @"Oman":@"ar", @"Tanzania":@"en", @"Equatorial Guinea":@"es", @"Cabo Verde":@"pr", @"Gabon":@"fr", @"Malta":@"en", @"Monaco":@"fr", @"Namibia":@"de", @"Grenada":@"en", @"New Zealand":@"en", @"Yemen":@"ar", @"Honduras":@"es", @"Thailand":@"th", @"Kyrgyzstan":@"ru", @"Jamaica":@"en", @"Sudan":@"ar", @"Iraq":@"ar", @"Samoa":@"en", @"Portugal":@"pt", @"Estonia":@"et", @"Uruguay":@"es", @"Nicaragua":@"es", @"United Arab Emirates":@"ar", @"Mexico":@"es", @"Lebanon":@"ar", @"Azerbaijan":@"tr", @"Madagascar":@"fr", @"Uzbekistan":@"ru", @"Lesotho":@"en", @"Djibouti":@"fr", @"Saint Vincent and the Grenadines":@"en", @"Spain":@"es", @"Colombia":@"es", @"Burundi":@"fr", @"Kenya":@"en", @"South Korea":@"ko", @"Senegal":@"fr", @"Cyprus":@"el", @"Barbados":@"en", @"Turkey":@"tr", @"Qatar":@"ar", @"Italy":@"it", @"Bangladesh":@"en", @"Eritrea":@"ar", @"Solomon Islands":@"en", @"Saint Lucia":@"en", @"San Marino":@"it", @"Kiribati":@"en", @"Micronesia":@"en", @"France":@"fr", @"Democratic Republic of the Congo":@"fr", @"Rwanda":@"fr", @"Slovakia":@"sk", @"Somalia":@"ar", @"Peru":@"es", @"Laos":@"fr", @"Suriname":@"nl", @"Nauru":@"en", @"Norway":@"no", @"Cote d'Ivoire":@"fr", @"Benin":@"fr", @"Israel":@"he", @"Cuba":@"es", @"Venezuela":@"es", @"Zambia":@"en", @"United States of America":@"en", @"USA": @"en", @"United States": @"en", @"US": @"en", @"Saint Kitts and Nevis":@"en", @"Togo":@"fr", @"Zimbabwe":@"en", @"Germany":@"de", @"Bahrain":@"ar", @"Antigua and Barbuda":@"en", @"Dominican Republic":@"es", @"Kazakhstan":@"en", @"Philippines":@"en", @"Nigeria":@"en", @"Ukraine":@"uk", @"Mauritania":@"ar", @"Tonga":@"en", @"Indonesia":@"en", @"Libya":@"ar", @"Finland":@"fi", @"Central African Republic":@"fr", @"Andorra":@"pt", @"North Korea":@"ko", @"Trinidad and Tobago":@"en", @"Liechtenstein":@"de", @"Vietnam":@"vi", @"South Sudan":@"en", @"Guyana":@"en", @"Mali":@"fr", @"Vatican City":@"it", @"Poland":@"pl", @"Russia":@"ru", @"Egypt":@"ar", @"Romania":@"ro", @"Morocco":@"ar", @"Angola":@"pt", @"Chad":@"fr", @"South Africa":@"en", @"Tunisia":@"ar", @"Fiji":@"en", @"Singapore":@"zh-CHS", @"Sweden":@"sv", @"Comoros":@"ar", @"United Kingdom":@"en", @"Austria":@"de", @"Latvia":@"lv", @"Mozambique":@"pt", @"Uganda":@"en", @"Greece":@"el", @"Denmark":@"da", @"Hungary":@"hu", @"Niger":@"fr", @"Botswana":@"en", };

    self.codeToTranslation = @{@"el":@"Έχω κοιλιοκάκη, μια πολύ σοβαρή δυσανεξία στη γλουτένη, η οποία βρίσκεται στο σιτάρι, βρώμη, κριθάρι και σίκαλη.", @"en":@"I have Celiac Disease, a very serious intolerance to gluten, which is found in wheat, oats, barley and rye.", @"zh-CHT":@"我有很嚴重的不容忍對麩質，小麥、 燕麥、 大麥和黑麥中發現腹腔疾病。", @"vi":@"Tôi có bệnh Celiac, một rất nghiêm trọng không dung nạp với gluten, được tìm thấy trong lúa mì, yến mạch, lúa mạch và lúa mạch đen.", @"it":@"Ho la malattia celiaca, una molto grave intolleranza al glutine, che si trova nel frumento, avena, orzo e segale.", @"ar":@"لقد مرض الاضطرابات الهضمية، تعصب خطيرة جداً على الغلوتين، الذي يوجد في القمح والشعير والشوفان والجاودار.", @"cs":@"Mám celiakii, velmi vážné nesnášenlivost na lepek, který se nachází v pšenici, oves, ječmen a žito.", @"et":@"Mul on Tsöliaakia, väga tõsine talumatus gluteeni, nisu, kaera, odra ja rukki Acceleration.", @"id":@"Saya memiliki Penyakit Celiac, intoleransi sangat serius terhadap gluten, yang ditemukan di gandum, gandum, barley dan gandum.", @"es":@"Tengo enfermedad celiaca, una intolerancia muy grave al gluten, que se encuentra en trigo, avena, cebada y centeno.", @"ru":@"У меня есть Целиакия, очень серьезная непереносимость клейковины, которая находится в пшеницу, овес, ячмень и рожь.", @"nl":@"Ik heb coeliakie, een zeer ernstige intolerantie voor gluten, die is gevonden in tarwe, haver, gerst en rogge.", @"pt":@"Tenho doença celíaca, uma muito grave intolerância ao glúten, que é encontrado no trigo, aveia, cevada e centeio.", @"no":@"Jeg har cøliaki, en svært alvorlig intoleranse overfor gluten, som finnes i hvete, havre, bygg og rug.", @"tr":@"Çölyak hastalığı, gluten, buğday, yulaf, arpa ve çavdar bulunan için çok ciddi bir hoşgörüsüzlük var.", @"lv":@"Man ir Celiac slimība, ļoti nopietns neiecietības lipekli, kas ir atrodams kviešu, auzu, miežu un rudzu.", @"lt":@"Turiu celiakija, yra labai rimtas netoleruojate glitimo, kuris randamas kviečių, avižų, miežių ir rugių.", @"th":@"โรค Celiac แพ้ที่รุนแรงมากต่อตัง ซึ่งพบได้ในข้าวสาลี ข้าวโอ๊ต ข้าวบาร์เลย์ และข้าวไรย์ ได้", @"ro":@"Am boala celiaca, o intoleranta foarte grave la gluten, care se găseşte în grâu, ovăz, orz şi secară.", @"pl":@"Mam celiakię, bardzo poważnej nietolerancji glutenu, który znajduje się w pszenicy, owsa, jęczmienia i żyta.", @"fr":@"J’ai la maladie coeliaque, une très grave intolérance au gluten, qui se trouve dans le blé, avoine, l’orge et le seigle.", @"de":@"Ich habe Zöliakie, eine sehr schwere Unverträglichkeit gegenüber Gluten, das in Weizen, Hafer, Gerste und Roggen vorkommt.", @"ht":@"Mwen gen Coeliaque move maladi, yon entolerans trè serye pou gluten, ki te twouve nan ble, avwan, grenn lòj ak Rye, Arizona.", @"da":@"Jeg har cøliaki, en meget alvorlig intolerance over for gluten, der findes i hvede, havre, byg og rug.", @"fi":@"Minulla on keliakia, vakava siedä gluteenia, joka löytyy vehnää, kauraa, ohraa ja ruista.", @"hu":@"Van lisztérzékeny, glutén, búza, zab, árpa és rozs található, amely egy nagyon komoly intolerancia.", @"ja":@"セリアック病、グルテンは、小麦、オート麦、大麦、ライ麦は、「非常に深刻なアレルギーがあります。", @"he":@"יש לי מחלת הצליאק, סבילות לגלוטן, המצויה חיטה, שיבולת שועל, שעורה, שיפון רציני מאוד.", @"zh-CHS":@"我有很严重的不容忍对麸质，小麦、 燕麦、 大麦和黑麦中发现腹腔疾病。", @"ko":@"나는 체 강 질병, 글루텐, 밀, 귀리, 보 리 및 호 밀을에서 발견 되는 매우 심각한 편협 있다.", @"sv":@"Jag har celiaki, en mycket allvarlig intolerans mot gluten, som finns i vete, havre, korn och råg.", @"sk":@"Mám celiakii, veľmi vážny neznášanlivosťou lepku, ktorý sa nachádza v pšenice, ovsa, jačmeňa a raže.", @"uk":@"У мене є целиакией, дуже серйозний непереносимість глютену, який знаходиться в пшениця, овес, ячмінь і жито.", @"sl":@"Imam celiakijo, zelo resno nestrpnosti na gluten, ki se nahaja v pšenico, oves, ječmen in rž."};
}

- (IBAction)enteredCountry:(id)sender {
    NSString *input = self.writeInCountry.text;
    NSLog(@"Entered country: %@", [self translation:input]);
}

- (IBAction)enterTouchedUpInside:(id)sender {
    NSString *input = self.writeInCountry.text;
    self.cardText.text = [self translation:input];
}


@end
