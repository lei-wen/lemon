//
//  UnsplashCollectionsParam.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashCollectionsParam.h"

@implementation UnsplashCollectionsParam

- (instancetype)init {
    return nil;
}

- (UnsplashCollectionsParam *)initWithPage:(NSInteger)page perPage:(NSInteger)perPage {
    self = [super init];
    if (self) {
        _page = page;
        _perPage = perPage;
    }
    return self;
}
@end
