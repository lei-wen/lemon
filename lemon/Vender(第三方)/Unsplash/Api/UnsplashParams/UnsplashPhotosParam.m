//
//  UnsplashPhotosParam.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashPhotosParam.h"

@implementation UnsplashPhotosParam

- (instancetype)init {
    return nil;
}

- (UnsplashPhotosParam *)initWithPage:(NSInteger)page perPage:(NSInteger)perPage sortType:(UnsplashPhotoSortType)sortType {
    self = [super init];
    if (self) {
        _page = page;
        _perPage = perPage;
        _sortType = sortType;
    }
    return self;
}
@end
