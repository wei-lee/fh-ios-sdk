//
//  FHCloudRequest.m
//  FH
//
//  Created by Wei Li on 09/08/2012.
//  Copyright (c) 2012 FeedHenry. All rights reserved.
//

#import "FHActRequest.h"
#import "FHConfig.h"
#import "FH.h"

@implementation FHActRequest

- (instancetype)initWithProps:(FHCloudProps *) props{
  self = [super init];
  if(self){
    _cloudProps = props;
  }
  return self;
}


- (NSURL *)buildURL {
  NSString * cloudUrl = _cloudProps.cloudHost;
  NSString* api = [cloudUrl stringByAppendingString:self.path];
  NSLog(@"Request url is %@", api);
  NSURL * uri = [[NSURL alloc]initWithString:api];
  return uri;
}

- (NSString *)path{
  return [NSString stringWithFormat:@"%@/%@", @"cloud", self.remoteAction];
}

- (void)setArgs:(NSDictionary * )arguments {
  _args = [NSMutableDictionary dictionaryWithDictionary:arguments];
  _args[@"__fh"] = [FH getDefaultParams]; //keep backward compatible
  NSLog(@"args set to  %@",_args);
}

@end