//
//  EMPLCollectionViewCell.h
//  EmployeeList
//
//  Created by Hussain on 4/30/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMPLTableViewCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UIImageView *imageVw;
@property (nonatomic,weak) IBOutlet UILabel *name;
@property (nonatomic,weak) IBOutlet UILabel *designation;
@property (nonatomic,weak) IBOutlet UILabel *address;
@end
