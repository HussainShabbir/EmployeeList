//
//  EMPLComInfoVwController.m
//  EmployeeList
//
//  Created by Vinod on 5/1/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import "EMPLComInfoVwController.h"

@interface EMPLComInfoVwController ()

@end

@implementation EMPLComInfoVwController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)doCancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:^{
    }];
}

@end
