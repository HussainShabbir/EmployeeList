//
//  EMPLempModel.h
//  EmployeeList
//
//  Created by Vinod on 4/30/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface EMPLEmpModel : NSManagedObject

@property (nonatomic,strong) NSString *fullName;
@property (nonatomic,strong) NSString *firstName;
@property (nonatomic,strong) NSString *lastName;
@property (nonatomic,strong) NSString *address;
@property (nonatomic,strong) NSString *employeeId;
@property (nonatomic,strong) NSString *designation;
@property (nonatomic,strong) NSString *email;
@property (nonatomic,strong) NSString *cellNo;
@property (nonatomic,strong) NSData *image;
@property (nonatomic,strong) NSSet *company;

//-(void)initWithFullName:(NSString*)fullName andFirstName:(NSString*)firstName andLastName:(NSString*)lastName andAddress:(NSString*)address andemployeeId:(NSString*)employeeId andDesignation:(NSString*)designation andImage:(NSData*)imageData;
@end
