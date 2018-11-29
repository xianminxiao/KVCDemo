//
//  KVCNoAccessInstanceModel.m
//  KVCDemo
//
//  Created by xxm on 2018/11/27.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import "KVCNoAccessInstanceModel.h"

@interface KVCNoAccessInstanceModel ()
{
    NSString* _name;
    NSString* _key;
}
@end

@implementation KVCNoAccessInstanceModel

+ (BOOL)accessInstanceVariablesDirectly
{
    return NO;
}

- (void)setName:(NSString*)name
{
    NSLog(@"%s name=%@", __FUNCTION__, name);
    _name = name;
}

- (BOOL)getKey
{
    NSLog(@"%s", __FUNCTION__);
    return YES;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@"%s value=%@, 该key=%@不存在！", __FUNCTION__, value, key);
}

- (id)valueForUndefinedKey:(NSString *)key
{
    NSLog(@"%s，该key不存在%@", __FUNCTION__, key);
    return nil;
}

@end
