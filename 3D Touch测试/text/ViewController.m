//
//  ViewController.m
//  text
//
//  Created by xyqm on 15/11/19.
//  Copyright © 2015年 栾高垒. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *a = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 180, 180)];
    
    a.image = [self grayImage:[UIImage imageNamed:@"aaa"]];
    [self.view addSubview:a];
//    UIView *vi = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 180, 180)];
//    vi.backgroundColor = [UIColor grayColor];
//    vi.alpha = 0.9;
//    [self.view addSubview:vi];
}
-(UIImage *)grayImage:(UIImage *)sourceImage
{
    int bitmapInfo = kCGImageAlphaNone;
    int width = sourceImage.size.width;
    int height = sourceImage.size.height;
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
    CGContextRef context = CGBitmapContextCreate (nil, width, height, 8, 0, colorSpace, bitmapInfo);
    CGColorSpaceRelease(colorSpace);
    if (context == NULL) {
        return nil;
    }
    CGContextDrawImage(context,
                       CGRectMake(0, 0, width, height), sourceImage.CGImage);
    UIImage *grayImage = [UIImage imageWithCGImage:CGBitmapContextCreateImage(context)];
    CGContextRelease(context);
    return grayImage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
