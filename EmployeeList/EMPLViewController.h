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
@property (strong, nonatomic) NSFetchedResultsController *fetchedCompResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (weak,nonatomic) IBOutlet UITableView *tableView;
@property (weak,nonatomic) IBOutlet UIButton *sortBtn;
@property (weak,nonatomic) IBOutlet UIButton *refreshBtn;
@property (weak,nonatomic) IBOutlet UILabel *errLabel;

@end

