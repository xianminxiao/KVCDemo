//
//  KVCModel.h
//  KVCDemo
//
//  Created by xxm on 2018/11/27.
//  Copyright © 2018年 xxm. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BaseModel;

NS_ASSUME_NONNULL_BEGIN

@interface KVCModel : NSObject

- (int)getName2ModelNum;

@property (nonatomic, strong) BaseModel* baseModel;

@end

NS_ASSUME_NONNULL_END
