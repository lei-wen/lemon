//
//  LMDailyViewController.m
//  lemon
//
//  Created by lei-wen on 2019/3/21.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "LMDailyViewController.h"
#import "UnsplashPhotosParam.h"

@interface LMDailyViewController ()
{
    UnsplashApiService *unsplashAPIService;
}
@end

@implementation LMDailyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Daily";
    
    UnsplashPhotosParam *param = [[UnsplashPhotosParam alloc] initWithPage:1 perPage:15 sortType:UnsplashPhotoSortTypeLatest];
    [unsplashAPIService UnsplashGettingPhotosRequest:param completionBlock:^(NSArray * _Nullable data, id  _Nullable response, NSError * _Nullable error) {
        NSLog(@"%@", data);
    }];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        unsplashAPIService = [UnsplashApiService sharedInstance];
    }
    return self;
}
@end
