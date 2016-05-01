//
//  EMPLCompanyModel.m
//  EmployeeList
//
//  Created by Vinod on 4/30/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import "EMPLCompanyModel.h"

@implementation EMPLCompanyModel

@dynamic address;
@dynamic companyId;
@dynamic companyName;
@dynamic empCount;
@dynamic industry;
@dynamic linkedinUrl;
@dynamic phoneNo;
@dynamic revenue;
@dynamic website;
@dynamic employee;
@dynamic image;


-(id)initWithCompanyName:(NSString*)companyName andAddress:(NSString*)address andCompanyId:(NSString*)companyId andEmpCount:(NSNumber*)empCount andIndustry:(NSString*)industry andLinkedinUrl:(NSString*)linkedinUrl andPhoneNo:(NSString*)phoneNo andRevenue:(NSNumber*)revenue andWebsite:(NSString*)website
{
    self.companyName = companyName;
    self.address = address;
    self.companyId = companyId;
    self.empCount = empCount;
    self.industry = industry;
    self.linkedinUrl = linkedinUrl;
    self.phoneNo = phoneNo;
    self.revenue = revenue;
    self.website = website;
    return self;
}

@end
