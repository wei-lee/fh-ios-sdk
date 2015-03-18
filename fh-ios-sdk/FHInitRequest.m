//
//  FHInitRequest.m
//  FH
//
//  Created by Wei Li on 09/08/2012.
//  Copyright (c) 2012 FeedHenry. All rights reserved.
//

#import "FHInitRequest.h"
#import "FHConfig.h"
#import "FHDefines.h"

#define FH_INIT_PATH @"box/srv/1.1/app/init"

@implementation FHInitRequest

- (instancetype)init
{
    self = [super init];
    if(self){
        _args =  (NSMutableDictionary *)self.defaultParams;
    }
    return self;
}

- (NSString *) path {
  return FH_INIT_PATH;
}

@end