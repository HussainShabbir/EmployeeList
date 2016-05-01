//
//  ViewController.m
//  EmployeeList
//
//  Created by Hussain on 4/30/16.
//  Copyright © 2016 com.hussainCode. All rights reserved.
//

#import "EMPLViewController.h"
#import "EMPLTableViewCell.h"
#import "EMPLAppDelegate.h"
#import "EMPLempModel.h"
#import "EMPLCompanyModel.h"
#import "EMPLInfoVwController.h"

@interface EMPLViewController ()
@property (nonatomic,strong) NSArray *tableViewData;
@end

@implementation EMPLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sortBtn.layer.cornerRadius = 5.0;
    EMPLAppDelegate *appDelegate = (EMPLAppDelegate*)[[UIApplication sharedApplication]delegate];
    self.managedObjectContext = appDelegate.managedObjectContext;
    id <NSFetchedResultsSectionInfo> sectionInfo = [self.fetchedResultsController sections][0];
    if ([sectionInfo numberOfObjects] == 0)
    {
        NSData *imageData = UIImagePNGRepresentation([UIImage imageNamed:@"john_Smith.jpeg"]);
        NSData *imageData1 = UIImagePNGRepresentation([UIImage imageNamed:@"rayan_John.jpeg"]);
        NSData *imageData2 = UIImagePNGRepresentation([UIImage imageNamed:@"peter_Mark.jpeg"]);
        NSData *imageData3 = UIImagePNGRepresentation([UIImage imageNamed:@"ricky_Richter.jpeg"]);
        NSData *imageData4 = UIImagePNGRepresentation([UIImage imageNamed:@"peter_Hosey.jpeg"]);
        NSData *imageData5 = UIImagePNGRepresentation([UIImage imageNamed:@"ross_Jerry.jpeg"]);
        NSData *imageData6 = UIImagePNGRepresentation([UIImage imageNamed:@"tim_Coterill.jpeg"]);
        NSData *imageData7 = UIImagePNGRepresentation([UIImage imageNamed:@"richard_Rosa.jpeg"]);
        NSData *imageData8 = UIImagePNGRepresentation([UIImage imageNamed:@"mark_David.jpeg"]);
        NSData *imageData9 = UIImagePNGRepresentation([UIImage imageNamed:@"sheryyl_Rose.jpeg"]);
        
        NSDictionary *empDict = [NSDictionary dictionaryWithObjects:@[@"John Smith",@"John",@"Smith",@"1901 Halford Ave Santa Clara CA 95051",@"123",imageData,@"Sales Manager",@"+1-786123456",@"john_Smith@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict1 = [NSDictionary dictionaryWithObjects:@[@"Rayan John",@"Rayan",@"John",@"2006 Klamath Ave Santa Clara CA 95032",@"124",imageData1,@"QA Manager",@"+1-386123456",@"rayan_John@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict2 = [NSDictionary dictionaryWithObjects:@[@"Peter Mark",@"Peter",@"Mark",@"2006 Redwood City Belmont CA 95042",@"125",imageData2,@"Product Manager",@"+1-586123456",@"peter_Mark@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict3 = [NSDictionary dictionaryWithObjects:@[@"Ricky Ritcher",@"Ricky",@"Ritcher",@"1230 Showers Drive Mountain View CA 94043",@"126",imageData3,@"Software Engineer",@"+1-686123426",@"ricky_Ritcher@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict4 = [NSDictionary dictionaryWithObjects:@[@"Peter Hosey",@"Peter",@"Hosey",@"600 Showers Drive Mountain View CA 94041",@"127",imageData4,@"Software Engineer",@"+1-586111456",@"peter_Hosey@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict5 = [NSDictionary dictionaryWithObjects:@[@"Ross Jerry",@"Ross",@"Jerry",@"921 Palo Alto San Antonio CA 94053",@"128",imageData5,@"QA Engineer",@"+1-916123456",@"ross_Jerry@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict6 = [NSDictionary dictionaryWithObjects:@[@"Tim Coterill",@"Tim",@"Coterill",@"345 Potrero SunnyVale CA 94153",@"129",imageData6,@"Software Engineer",@"+1-216123456",@"tim_Coterill@gmail.com"]  forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict7 = [NSDictionary dictionaryWithObjects:@[@"Richard Rosa",@"Richard",@"Rosa",@"145 Arques Ave CA 94253",@"130",imageData7,@"Software Engineer",@"+1-216122256",@"richard_Rosa@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict8 = [NSDictionary dictionaryWithObjects:@[@"Mark David",@"Mark",@"David",@"245 Isabella Ave CA 94053",@"131",imageData8,@"Vice President",@"+1-216122253",@"mark_David@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSDictionary *empDict9 = [NSDictionary dictionaryWithObjects:@[@"Sheryyl Rose",@"Sheryyl",@"Rose",@"45 Milpitas Ave CA 94853",@"132",imageData9,@"Vice President",@"+1-336122253",@"sheryyl_Rose@gmail.com"] forKeys:@[@"fullName",@"firstName",@"lastName",@"address",@"employeeId",@"image",@"designation",@"cellNo",@"email"]];
        
        NSArray *empList = @[empDict,empDict1,empDict2,empDict3,empDict4,empDict5,empDict6,empDict7,empDict8,empDict9];
        for (NSDictionary *empDictionary in empList)
        {
            [self insertObject:empDictionary];
        }
    }
    self.tableViewData = self.fetchedResultsController.fetchedObjects;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Below method will load data on TableView
-(void)insertObject:(id)object
{
    NSManagedObjectContext *context = [self.fetchedResultsController managedObjectContext];
    NSEntityDescription *entity = [[self.fetchedResultsController fetchRequest]entity];
    EMPLEmpModel *empModel = [[EMPLEmpModel alloc]initWithEntity:entity insertIntoManagedObjectContext:context];
    empModel.fullName = object[@"fullName"];
    empModel.firstName = object[@"firstName"];
    empModel.lastName = object[@"lastName"];
    empModel.address = object[@"address"];
    empModel.employeeId = object[@"employeeId"];
    empModel.designation = object[@"designation"];
    empModel.image = object[@"image"];
    empModel.email = object[@"email"];
    empModel.cellNo = object[@"cellNo"];
    //Save the context
    NSError *error = nil;
    if (![context save:&error]){
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
}

- (NSFetchedResultsController *)fetchedResultsController
{
    if (_fetchedResultsController != nil) {
        return _fetchedResultsController;
    }
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    // Edit the entity name as appropriate.
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Employee" inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    // Set the batch size to a suitable number.
    [fetchRequest setFetchBatchSize:20];
    
    // Edit the sort key as appropriate.
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"fullName" ascending:YES];
    
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    
    // Edit the section name key path and cache name if appropriate.
    // nil for section name key path means "no sections".
    NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:@"Master"];
    aFetchedResultsController.delegate = self;
    self.fetchedResultsController = aFetchedResultsController;
    
    NSError *error = nil;
    if (![self.fetchedResultsController performFetch:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    return _fetchedResultsController;
}

- (void)configureCell:(id)cellObj atIndexPath:(NSIndexPath *)indexPath
{
    if (self.tableViewData && self.tableViewData.count > indexPath.row)
    {
        EMPLEmpModel *empModel = [self.tableViewData objectAtIndex:indexPath.row];
        EMPLTableViewCell *cell = (EMPLTableViewCell *)cellObj;
        cell.imageVw.image = [UIImage imageWithData:empModel.image];
        cell.name.text = empModel.fullName;
        cell.designation.text = empModel.designation;
        cell.address.text = empModel.address;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableViewData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EMPLTableViewCell *cell = (EMPLTableViewCell*)[tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}


- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView beginUpdates];
}

- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type
{
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        default:
            return;
    }
}

- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath
{
    UITableView *tableView = self.tableView;
    
    switch(type) {
        case NSFetchedResultsChangeInsert:
            [tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeUpdate:
            [self configureCell:[tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
            break;
            
        case NSFetchedResultsChangeMove:
            [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
            [tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
    }
}

- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
{
    [self.tableView endUpdates];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"infoVwIdentifier"])
    {
        EMPLInfoVwController *destinationVwController = segue.destinationViewController;
        EMPLEmpModel *empModel = [self.fetchedResultsController objectAtIndexPath:self.tableView.indexPathForSelectedRow];
        destinationVwController.detail = empModel;
    }
}

-(IBAction)sortByAction:(id)sender{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Sorted By" message:@"Select the below options:" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *sortedNmAction = [UIAlertAction actionWithTitle:@"Name" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self sortBy:@"fullName"];
    }];
    [alertController addAction:sortedNmAction];
    
    UIAlertAction *sortedEmlAction = [UIAlertAction actionWithTitle:@"Email" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self sortBy:@"email"];
    }];
    [alertController addAction:sortedEmlAction];
    
    UIAlertAction *sortedAddrAction = [UIAlertAction actionWithTitle:@"Address" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self sortBy:@"address"];
    }];
    [alertController addAction:sortedAddrAction];
    
    UIAlertAction *sortedDesigntnAction = [UIAlertAction actionWithTitle:@"Designation" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self sortBy:@"designation"];
    }];
    [alertController addAction:sortedDesigntnAction];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alertController addAction:cancelAction];
    
    [self presentViewController:alertController animated:YES completion:^{
    }];
}

-(void)sortBy:(NSString*)sortedOption{
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:sortedOption ascending:YES];
    [[self.fetchedResultsController fetchRequest]setSortDescriptors:@[sortDescriptor]];
    NSError *error;
    if (![[self fetchedResultsController] performFetch:&error]) {
        // Handle you error here
    }
    else{
        self.tableViewData = self.fetchedResultsController.fetchedObjects;
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    }
    [self.view endEditing:YES];
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    NSString *filterText = [searchBar.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    self.tableViewData = self.fetchedResultsController.fetchedObjects;
    if (filterText.length > 0)
    {
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"fullName CONTAINS[CD] %@", filterText];
        NSArray *array = [[self.fetchedResultsController fetchedObjects]filteredArrayUsingPredicate:predicate];
        if (array && array.count > 0)
        {
            self.tableViewData = array;
        }
    }
    [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationFade];
    [searchBar resignFirstResponder];
}

@end
