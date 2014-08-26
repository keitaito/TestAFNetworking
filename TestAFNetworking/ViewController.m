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
{
    NSString *url;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"TestAFNetworking");
    url = @"http://graph.facebook.com/keitaitok";
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
             NSString *name = [responseObject objectForKey:@"name"];
             NSLog(@"name: %@", name);
             self.nameLabel.text = name;
         } failure:^(NSURLSessionDataTask *task, NSError *error) {
             // Error
             NSLog(@"Error: %@", error);
         }];
}

- (IBAction)getURLButton:(id)sender {
    [self getURL:url];
}
@end
