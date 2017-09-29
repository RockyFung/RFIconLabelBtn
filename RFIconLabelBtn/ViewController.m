//
//  ViewController.m
//  RFIconLabelBtn
//
//  Created by 冯剑 on 2017/9/29.
//  Copyright © 2017年 冯剑. All rights reserved.
//

#import "ViewController.h"
#import "RFIconLabelBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    RFIconLabelBtn *button1 = [[RFIconLabelBtn alloc]initWithFrame:(CGRect){(CGRectGetWidth(self.view.frame)-100)/2,80,200,100}
                                                              type:RFIconLabelBtnTopImageType
                                                         imageSize:CGSizeMake(50, 50) midmargin:20];
    button1.isShowSelectBackgroudColor = YES;
    button1.imageView.image = [UIImage imageNamed:@"image"];
    button1.backgroundColor = [UIColor whiteColor];
    button1.titleLabel.text = @"朋友圈朋友圈朋友圈朋友";
    [self.view addSubview:button1];
    
    [button1 touchAction:^(RFIconLabelBtn * _Nonnull button) {
        NSLog(@"上图标，下文字");
    }];
    
    
    RFIconLabelBtn *button2 = [[RFIconLabelBtn alloc]initWithFrame:(CGRect){(CGRectGetWidth(self.view.frame)-100)/2,200,100,50}
                                                              type:RFIconLabelBtnLeftImageType
                                                         imageSize:CGSizeMake(30, 30) midmargin:10];
    button2.isShowSelectBackgroudColor = NO;
    button2.imageView.image = [UIImage imageNamed:@"image"];
    button2.backgroundColor = [UIColor whiteColor];
    button2.titleLabel.text = @"朋友圈";
    [self.view addSubview:button2];
    [button2 touchAction:^(RFIconLabelBtn * _Nonnull button) {
        NSLog(@"左图标，右文字");
    }];
    
    
    RFIconLabelBtn *button3 = [[RFIconLabelBtn alloc]initWithFrame:(CGRect){(CGRectGetWidth(self.view.frame)-100)/2,270,100,50}
                                                              type:RFIconLabelBtnRightImageType
                                                         imageSize:CGSizeMake(30, 30) midmargin:5];
    button3.isShowSelectBackgroudColor = YES;
    button3.imageView.image = [UIImage imageNamed:@"image"];
    button3.backgroundColor = [UIColor whiteColor];
    button3.titleLabel.text = @"朋友圈";
    [self.view addSubview:button3];
    [button3 touchAction:^(RFIconLabelBtn * _Nonnull button) {
        NSLog(@"右图标，左文字");
    }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
