//
//  TestAImage.m
//  TestAImage
//
//  Created by zhao.feng on 2017/6/26.
//  Copyright © 2017年 com.zhaofeng. All rights reserved.
//

#import "TestAImage.h"
#import "MyImageShow.h"

@implementation TestAImage

+ (UIImage *)testImage:(int)i
{
    
    if (i == 1) {
        
        return [UIImage imageNamed:@"手表-黑"];
    }
    else{
         return [UIImage imageNamed:@"蓝牙链接"];
    }
}

+ (void)showMyImage:(UIViewController *)viewController
{
    
    MyImageShow *imageShow = [[MyImageShow alloc] initWithNibName:@"MyImageShow" bundle:nil];
    
    [viewController presentViewController:imageShow animated:YES completion:nil];
}

@end
