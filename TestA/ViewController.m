//
//  ViewController.m
//  TestA
//
//  Created by zhao.feng on 2017/6/26.
//  Copyright © 2017年 com.zhaofeng. All rights reserved.
//

#import "ViewController.h"
#import "TCA.h"
#import <TestAImage.h>
#import <TestInfoManager.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *testImg;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"TA" ofType:@"bundle"];
//    NSBundle *b = [[NSBundle alloc] initWithPath:path];
//    
//    self.testImg.image = [UIImage imageNamed:@"开机画面" inBundle:b compatibleWithTraitCollection:0];
    
    
    self.testImg.image = [TestAImage testImage:1];
    
   //self.testImg.image = [TestInfoManager testImage];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn1:(id)sender {
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"TA" ofType:@"bundle"];
//    NSBundle *b = [[NSBundle alloc] initWithPath:path];
//    
//    
//    TCA *tca = [[TCA alloc] initWithNibName:@"TCA" bundle:b];
//   
//    
//    
//    [self presentViewController:tca animated:YES completion:nil];
    
    
 //   [TestAImage showMyImage:self];
    
    [TestInfoManager showInfo:self];
}

@end
