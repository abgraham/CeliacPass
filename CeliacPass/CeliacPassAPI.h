//
//  CeliacPassAPI.h
//  CeliacPass
//
//  Created by Annie Graham on 10/30/16.
//  Copyright © 2016 Annie Graham. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CeliacPassAPI : NSObject

+ (CeliacPassAPI *)sharedInstance;
- (NSDictionary *)getCountryToCode;
- (NSDictionary *)getCodeToTranslation;

@end
