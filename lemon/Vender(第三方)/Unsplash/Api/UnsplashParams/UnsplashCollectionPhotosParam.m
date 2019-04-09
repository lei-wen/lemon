//
//  UnsplashCollectionPhotosParam.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashCollectionPhotosParam.h"

@implementation UnsplashCollectionPhotosParam

- (instancetype)init {
    return nil;
}

- (UnsplashCollectionPhotosParam *)initWithID:(NSString *)id page:(NSInteger)page perPage:(NSInteger)perPage {
    self = [super init];
    if(self) {
        _id = [id copy];
        _page = page;
        _perPage = perPage;
    }
    return self;
}

@end
