//
//  EMPLCompTableVwCell.h
//  EmployeeList
//
//  Created by Vinod on 5/1/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMPLCompTableVwCell : UITableViewCell

@property (nonatomic,weak) IBOutlet UILabel *companyNm;
@property (nonatomic,weak) IBOutlet UILabel *companyWebSt;
@property (nonatomic,weak) IBOutlet UILabel *companyDesc;

@end
