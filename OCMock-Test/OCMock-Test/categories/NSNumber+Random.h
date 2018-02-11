//
//  NSNumber+Random.h
//  OCMock-Test
//
//  Created by 童万华 on 2018/2/11.
//  Copyright © 2018年 童万华. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (Random)
/**
 产生（from,top）之间的随机正整数
 
 @param from 下限
 @param top 上限
 @return 随机数
 */
+(int)randomNumberStartFrom:(int)from toEnd:(int)top;
@end
