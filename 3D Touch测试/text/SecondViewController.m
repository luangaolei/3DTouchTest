//
//  SecondViewController.m
//  text
//
//  Created by xyqm on 15/11/20.
//  Copyright © 2015年 栾高垒. All rights reserved.
//

#import "SecondViewController.h"
#import "RootViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"哈哈" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 200, 150, 50);
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)buttonClick:(UIButton *)button{
    RootViewController *a = [[RootViewController alloc]init];
    [self presentViewController:a animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
