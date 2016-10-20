//
//  CountryPickerViewController.m
//  CeliacPass
//
//  Created by Annie Graham on 10/20/16.
//  Copyright © 2016 Annie Graham. All rights reserved.
//

#import "CountryPickerViewController.h"

@implementation CountryPickerViewController{
    NSArray *countries;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpCountries];
    self.countryTable.dataSource = self;
    self.countryTable.delegate = self;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"countryCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"countryCell"];
    if (!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text = [countries objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [countries count];
}

- (void)setUpCountries {
    countries = [NSArray arrayWithObjects:@"Cabo Verde", @"Canada", @"Central African Republic", @"Chad", @"Chile", @"China", @"Colombia", @"Comoros", @"Democratic Republic of the Congo", @"Republic of the Congo", @"Costa Rica", @"Cote d'Ivoire", @"Croatia", @"Cuba", @"Cyprus", @"Czech Republic", @"Denmark", @"Djibouti", @"Dominica", @"Dominican Republic", @"Ecuador", @"Egypt", @"El Salvador", @"Equatorial Guinea", @"Eritrea", @"Estonia", @"Ethiopia", @"Fiji", @"Finland", @"France", @"Gabon", @"Gambia", @"Georgia", @"Germany", @"Ghana", @"Greece", @"Grenada", @"Guatemala", @"Guinea", @"Guinea-Bissau", @"Guyana", @"Haiti", @"Honduras", @"Hungary", @"Iceland", @"India", @"Indonesia", @"Iran", @"Iraq", @"Ireland", @"Israel", @"Italy", @"Jamaica", @"Japan", @"Jordan", @"Kazakhstan", @"Kenya", @"Kiribati", @"Kosovo", @"Kuwait", @"Kyrgyzstan", @"Laos", @"Latvia", @"Lebanon", @"Lesotho", @"Liberia", @"Libya", @"Liechtenstein", @"Lithuania", @"Luxembourg", @"Macedonia", @"Madagascar", @"Malawi", @"Malaysia", @"Maldives", @"Mali", @"Malta", @"Marshall Islands", @"Mauritania", @"Mauritius", @"Mexico", @"Micronesia", @"Moldova", @"Monaco", @"Mongolia", @"Montenegro", @"Morocco", @"Mozambique", @"Myanmar", @"Namibia", @"Nauru", @"Nepal", @"Netherlands", @"New Zealand", @"Nicaragua", @"Niger", @"Nigeria", @"North Korea", @"Norway", @"Oman", @"Pakistan", @"Palau", @"Palestine", @"Panama", @"Papua New Guinea", @"Paraguay", @"Peru", @"Philippines", @"Poland", @"Portugal", @"Qatar", @"Romania", @"Russia", @"Rwanda", @"Saint Kitts and Nevis", @"Saint Lucia", @"Saint Vincent and the Grenadines", @"Samoa", @"San Marino", @"Sao Tome and Principe", @"Saudi Arabia", @"Senegal", @"Serbia", @"Seychelles", @"Sierra Leone", @"Singapore", @"Slovakia", @"Slovenia", @"Solomon Islands", @"Somalia", @"South Africa", @"South Korea", @"South Sudan", @"Spain", @"Sri Lanka", @"Sudan", @"Suriname", @"Swaziland", @"Sweden", @"Switzerland", @"Syria", @"Taiwan", @"Tajikistan", @"Tanzania", @"Thailand", @"Timor-Leste", @"Togo", @"Tonga", @"Trinidad and Tobago", @"Tunisia", @"Turkey", @"Turkmenistan", @"Tuvalu", @"Uganda", @"Ukraine", @"United Arab Emirates", @"United Kingdom", @"United States of America", @"Uruguay", @"Uzbekistan", @"Vanuatu", @"Vatican City", @"Venezuela", @"Vietnam", @"Yemen", @"Zambia", @"Zimbabwe", NULL];
}



@end
