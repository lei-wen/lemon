//
//  UnsplashCollection.m
//  lemon
//
//  Created by lei-wen on 2019/3/25.
//  Copyright © 2019 lei-wen. All rights reserved.
//

#import "UnsplashCollection.h"

@implementation UnsplashCollection

+ (UnsplashCollection *)collectionWithDic:(NSDictionary *)dic {
    UnsplashCollection *collection = [[UnsplashCollection alloc] init];
    collection.id = [dic UnsplashObjectForKey:@"id"];
    collection.title = [dic UnsplashObjectForKey:@"title"];
    collection.description_ = [dic UnsplashObjectForKey:@"description"];
    collection.published_at = [dic UnsplashObjectForKey:@"published_at"];
    collection.curated = [dic UnsplashObjectForKey:@"curated"];
    collection.total_photos = [[dic UnsplashObjectForKey:@"total_photos"] stringValue];
    collection.private_ = [dic UnsplashObjectForKey:@"private"];
    collection.share_key = [dic UnsplashObjectForKey:@"share_key"];
    collection.unsplashCoverPhoto = [UnsplashCoverPhoto coverPhotoWithDic:[dic UnsplashObjectForKey:@"cover_photo"]];
    collection.unsplashUser = [UnsplashUser userWithDic:[dic UnsplashObjectForKey:@"user"]];
    collection.unsplashLink = [UnsplashLink linkWithDic:[dic UnsplashObjectForKey:@"links"]];
    return collection;
}

@end
