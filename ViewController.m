//
//  ViewController.m
//  KVCDemo
//
//  Created by xxm on 2018/11/27.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import "ViewController.h"
#import "KVCNoAccessInstanceModel.h"
#import "KVCModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    KVCNoAccessInstanceModel* noAccessInstanceModel = [KVCNoAccessInstanceModel new];
    [noAccessInstanceModel setValue:@"newName" forKey:@"name"];
    [noAccessInstanceModel setValue:@"newKey" forKey:@"key"];
    [noAccessInstanceModel valueForKey:@"name"];
    [noAccessInstanceModel valueForKey:@"key"];
    
    NSLog(@"-------------------- 分割线 --------------------");
    KVCModel* model = [KVCModel new];
    [model setValue:@"newName" forKey:@"name"];
    [model setValue:@"newName2" forKey:@"name2"];
    [model setValue:@"newName3" forKey:@"name3"];
    [model setValue:@"newName4" forKey:@"name4"];
    [model setValue:@"newName5" forKey:@"name5"];
    [model setValue:@"newName6" forKey:@"name6"];
    
//    model的成员变量_name2类型已经变为NSString*，所以函数getName2ModelNum会有异常
//    [model getName2ModelNum];
    
    NSLog(@"-------------------- 分割线 --------------------");
    NSLog(@"key=name value=%@", [model valueForKey:@"name"]);
    NSLog(@"key=name2 value=%@", [model valueForKey:@"name2"]);
    NSLog(@"key=name3 value=%@", [model valueForKey:@"name3"]);
    NSLog(@"key=name4 value=%@", [model valueForKey:@"name4"]);
    NSLog(@"key=name5 value=%@", [model valueForKey:@"name5"]);
    NSLog(@"key=name6 value=%@", [model valueForKey:@"name6"]);
    NSLog(@"key=name7 value=%@", [model valueForKey:@"name7"]);
    
    NSLog(@"-------------------- 分割线 --------------------");

    NSLog(@"keyPath=baseModel.num value=%@", [model valueForKeyPath:@"baseModel.num"]);
    [model setValue:@"newNumValue" forKeyPath:@"baseModel.num"];
    NSLog(@"keyPath=baseModel.num value=%@", [model valueForKeyPath:@"baseModel.num"]);
    
    NSString* key = @"name8";
    id value = @"name8";
    NSError* error;
    BOOL result = [model validateValue:&value forKey:key error:&error]; //如果没有重写-(BOOL)-validate<Key>:error:，默认返回Yes
    NSLog(@"validateValue:error: value=name8 result=%d", result);
    value = @"name88";
    result = [model validateValue:&value forKey:key error:&error];
    NSLog(@"validateValue:error: value=name88 result=%d", result);
    
    NSLog(@"-------------------- 分割线 --------------------");
    
    NSArray* languageArrStr = @[@"english", @"franch", @"chinese"];
    NSArray* languageArrCapStr = [languageArrStr valueForKey:@"capitalizedString"];
    for (NSString* languageStr  in languageArrCapStr)
    {
        NSLog(@"%@", languageStr);
    }
    
}

@end
