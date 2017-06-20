//
//  HomeViewController.m
//  LGHZhiHuDaily
//
//  Created by 刘观华 on 17/6/20.
//  Copyright © 2017年 SmoothV. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property(nonatomic, assign) NSInteger days;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self fetchData];
}

-(void)fetchData
{
    
    NSString *url = nil;
    if (self.days == -1) {
        url = @"http://news-at.zhihu.com/api/4/news/latest";
    } else {
        url = [@"http://news.at.zhihu.com/api/4/news/before/"
               stringByAppendingString:[WSDDataUtils dateStringBeforeDays:self.days]];
    }
    
    NSURLSessionConfiguration *config =
    [NSURLSessionConfiguration defaultSessionConfiguration];
    AFHTTPSessionManager *manager =
    [[AFHTTPSessionManager alloc] initWithSessionConfiguration:config];
    
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
