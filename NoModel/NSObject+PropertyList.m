//
//  NSObject+PropertyList.m
//  NoModel
//
//  Created by 臧其龙 on 16/5/9.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "NSObject+PropertyList.h"
#import <objc/runtime.h>

@implementation NSObject (PropertyList)

- (NSArray *)getClassProperties
{
    NSMutableArray *keyArray = [NSMutableArray array];
    uint propertyCount;
    objc_property_t *ps = class_copyPropertyList([self class], &propertyCount);
    for (uint i = 0; i < propertyCount; i++) {
        objc_property_t property = ps[i];
        const char *propertyName = property_getName(property);
        
        [keyArray addObject:[NSString stringWithUTF8String:propertyName]];
    }
    
    return [keyArray copy];
}

- (NSDictionary *)generateModelDictionary
{
    NSMutableDictionary *userDictionary = [NSMutableDictionary dictionary];
    NSArray *propertyArray = [self getClassProperties];
    for (NSString *key in propertyArray) {
        id value = [self valueForKey:key];
        if (value != nil || value != NULL) {
            [userDictionary setValue:[self valueForKey:key] forKey:key];
        }
        
    }
    return [userDictionary copy];
}

@end
