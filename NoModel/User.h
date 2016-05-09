//
//  User.h
//  NoModel
//
//  Created by 臧其龙 on 16/5/9.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, copy) NSString *familyName;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *age;

@end
