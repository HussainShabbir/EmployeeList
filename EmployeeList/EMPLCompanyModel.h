//
//  EMPLCompanyModel.h
//  EmployeeList
//
//  Created by Vinod on 4/30/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface EMPLCompanyModel : NSManagedObject

@property (nonatomic,strong) NSString *address;
@property (nonatomic,strong) NSString *companyId;
@property (nonatomic,strong) NSString *companyName;
@property (nonatomic,strong) NSNumber *empCount;
@property (nonatomic,strong) NSString *industry;
@property (nonatomic,strong) NSString *linkedinUrl;
@property (nonatomic,strong) NSString *phoneNo;
@property (nonatomic,strong) NSNumber *revenue;
@property (nonatomic,strong) NSString *website;
@property (nonatomic,strong) NSSet *employee;

-(id)initWithCompanyName:(NSString*)companyName andAddress:(NSString*)address andCompanyId:(NSString*)companyId andEmpCount:(NSNumber*)empCount andIndustry:(NSString*)industry andLinkedinUrl:(NSString*)linkedinUrl andPhoneNo:(NSString*)phoneNo andRevenue:(NSNumber*)revenue andWebsite:(NSString*)website;

@end
