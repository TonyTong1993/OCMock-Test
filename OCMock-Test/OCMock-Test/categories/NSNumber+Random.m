//
//  NSNumber+Random.m
//  OCMock-Test
//
//  Created by 童万华 on 2018/2/11.
//  Copyright © 2018年 童万华. All rights reserved.
//

#import "NSNumber+Random.h"

@implementation NSNumber (Random)

+(int)randomNumberStartFrom:(int)from toEnd:(int)top {
    if (from > top) return from;
    
    return (arc4random() % (top - from + 1)) + from;
    
}
@end
