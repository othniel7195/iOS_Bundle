//
//  TestInfoManager.m
//  TestInfo
//
//  Created by zhao.feng on 2017/6/27.
//  Copyright © 2017年 com.zhaofeng. All rights reserved.
//

#import "TestInfoManager.h"
#import "ShowInfo.h"

@implementation TestInfoManager

+ (UIImage *)testImage
{
    NSBundle *selfBundle = [NSBundle bundleForClass:self];
    NSBundle *b =[NSBundle bundleWithPath:[selfBundle.bundlePath stringByAppendingPathComponent:@"Info.bundle"]] ;
    
    return [UIImage imageNamed:@"watch" inBundle:b compatibleWithTraitCollection:0];
    
}


+ (void)showInfo:(UIViewController *)vc
{
    NSBundle *selfBundle = [NSBundle bundleForClass:self];
    NSBundle *b =[NSBundle bundleWithPath:[selfBundle.bundlePath stringByAppendingPathComponent:@"Info.bundle"]] ;
    
    ShowInfo *info = [[ShowInfo alloc] initWithNibName:@"ShowInfo" bundle:b];
    
    [vc presentViewController:info animated:YES completion:nil];
    
    
}
@end
