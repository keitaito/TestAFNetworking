//
//  ViewController.h
//  TestAFNetworking
//
//  Created by Keita on 8/25/14.
//  Copyright (c) 2014 Keita Ito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
- (IBAction)getURLButton:(id)sender;
@end
