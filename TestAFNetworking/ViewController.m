//
//  ViewController.m
//  TestAFNetworking
//
//  Created by Keita on 8/25/14.
//  Copyright (c) 2014 Keita Ito. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"TestAFNetworking");
    [self getURL:@"http://graph.facebook.com/keitaitok"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getURL:(NSString *)string
{
    // Initialize
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    // Get JSON file with using AFHTTPSessionManager
    [manager GET:string
      parameters:nil
         success:^(NSURLSessionDataTask *task, id responseObject) {
             // Success
             NSLog(@"responseObject: %@", responseObject);
         } failure:^(NSURLSessionDataTask *task, NSError *error) {
             // Error
             NSLog(@"Error: %@", error);
         }];
}

@end
