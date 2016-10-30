//
//  ViewController.m
//  CeliacPass
//
//  Created by Annie Graham on 10/14/16.
//  Copyright © 2016 Annie Graham. All rights reserved.
//

#import "ViewController.h"
#import "CeliacPassAPI.h"

@interface ViewController ()

- (IBAction)tappedNavButton:(id)sender;

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) NSDictionary *countryToCode;
@property (strong, nonatomic) NSDictionary *codeToTranslation;
@property (weak, nonatomic) IBOutlet UITextField *writeInCountry;
@property (weak, nonatomic) IBOutlet UITextView *cardText;


@end

@implementation ViewController

NSString *country;
NSString *const SORRY_MESSAGE = @"We're sorry, we could not translate the language associated with your country";

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

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {

    NSLog(@"didFailWithError: %@", error);
}

- (void)didReceiveMemoryWarning {

    [super didReceiveMemoryWarning];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {

    [self.locationManager stopUpdatingLocation];
    CLGeocoder *ceo = [CLGeocoder new];
    [ceo reverseGeocodeLocation:[locations lastObject] completionHandler:^(NSArray *placemarks, NSError *error) {
        NSLog(@"Found placemarks: %@, error: %@", placemarks, error);
        if (error == nil && [placemarks count] > 0) {
            CLPlacemark *placemark = [placemarks lastObject];
            country = [NSString stringWithFormat:@"%@", placemark.country];
            self.cardText.text = [self translation:country];
        } else {
            NSLog(@"%@", error.debugDescription);
        }
    } ];
}

- (NSString *)translation:(NSString *)country {

    NSString *code = [self.countryToCode objectForKey:country];

    NSString *translation = [self.codeToTranslation objectForKey:code];
    if (translation) {

        return translation;
    }

    return SORRY_MESSAGE;
}

- (void)setUpData {

    self.countryToCode = [[CeliacPassAPI sharedInstance] getCountryToCode];
    self.codeToTranslation = [[CeliacPassAPI sharedInstance] getCodeToTranslation];
}

- (IBAction)enterTouchedUpInside:(id)sender {

    NSString *input = self.writeInCountry.text;
    self.cardText.text = [self translation:input];
}


- (IBAction)tappedNavButton:(id)sender {

    CountryPickerViewController *countryVC = [self.storyboard instantiateViewControllerWithIdentifier:@"countryPickerViewController"];
    [self.navigationController pushViewController:countryVC animated:YES];
}
@end
