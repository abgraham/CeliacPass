//
//  CountryPickerViewController.h
//  CeliacPass
//
//  Created by Annie Graham on 10/20/16.
//  Copyright © 2016 Annie Graham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountryPickerViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *countryTable;


@end
