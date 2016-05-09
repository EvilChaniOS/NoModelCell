//
//  NSObject+PropertyList.h
//  NoModel
//
//  Created by 臧其龙 on 16/5/9.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyList)

- (NSArray *)getClassProperties;

- (NSDictionary *)generateModelDictionary;

@end
