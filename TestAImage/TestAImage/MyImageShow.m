//
//  MyImageShow.m
//  TestAImage
//
//  Created by zhao.feng on 2017/6/26.
//  Copyright © 2017年 com.zhaofeng. All rights reserved.
//

#import "MyImageShow.h"

@interface MyImageShow ()

@end

@implementation MyImageShow


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (!self) return nil;
    
    
    return self;
    
}
- (IBAction)endButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
