//
//  ViewController.h
//  EmployeeList
//
//  Created by Hussain on 4/30/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface EMPLViewController : UIViewController<NSFetchedResultsControllerDelegate,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong,nonatomic) IBOutlet UITableView *tableView;
@property (strong,nonatomic) IBOutlet UIButton *sortBtn;

@end

