//
//  KVCModel.m
//  KVCDemo
//
//  Created by xxm on 2018/11/27.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import "KVCModel.h"
#import "BaseModel.h"

@interface KVCModel ()
{
    NSString* _name;
    
    BaseModel* _name2;
    NSString* _isName2;
    
    NSString* _isName3;
    NSString* name3;
    
    NSString* name4;
    NSString* isName4;
    
    NSString* isName5;
}

@end

@implementation KVCModel

-(BOOL)validateName8:(id *)value error:(out NSError * _Nullable __autoreleasing *)outError   // 会验证是否设了非法的value
{
    NSString* newName8Value = *value;
    if ([newName8Value isEqualToString:@"name8"])
    {
        // 如果name8的新值为name8就返回NO
        return NO;
    }
    return YES;
}

- (void)setName:(NSString*)name
{
    NSLog(@"%s name=%@", __FUNCTION__, name);
    _name = name;
}

- (void)_setName:(NSString*)name
{
    NSLog(@"%s name=%@", __FUNCTION__, name);
    _name = name;
}

- (void)_setName2:(NSString*)name
{
    NSLog(@"%s name=%@", __FUNCTION__, name);
    _name = name;
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

- (instancetype)init
{
    if (self = [super init])
    {
        _name2 = [BaseModel new];
        self.baseModel = [BaseModel new];
    }
    
    return self;
    
}

- (void)name2
{
    NSLog(@"%s enter", __FUNCTION__);
    return ;
}

- (int)getName2ModelNum
{
    return _name2.num;
}

#pragma mark - 当key使用name6时，KVC会找到这两个方法。
- (NSUInteger)countOfName7
{
    NSLog(@"%s enter", __FUNCTION__);
    return 4;
}
-(id)objectInName7AtIndex:(NSUInteger)index
{
    NSLog(@"%s enter", __FUNCTION__);
    return @(index * 2);
}

#pragma mark -


@end
