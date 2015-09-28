//
//  TableViewController.m
//  TableView
//
//  Created by CHO INTACK on 2015/09/11.
//  Copyright (c) 2015年 UI2. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* this is commit test */
    /* this is feature */
    /* feature2 */
    /* feature3 */
    NSArray *sec1 = [[NSArray alloc] initWithObjects:@"TELECOM", @"DOCOMO", @"AU", @"SBANK", nil];
    NSArray *sec2 = [[NSArray alloc] initWithObjects:@"ANIMAL", @"HUMAN", @"MONKEY", @"SARU", nil];
    NSArray *sec3 = [[NSArray alloc] initWithObjects:@"CAR", @"NISSAN", @"DOYOTA", @"SIBARU", nil];
    
    sectionData = [[NSArray alloc] initWithObjects:sec1, sec2, sec3, nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    /* hotfix */
}
- (IBAction)showBtn:(id)sender {
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return [sectionData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSArray *data = [sectionData objectAtIndex:section];
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    static  NSString * CellIdentifier = @ "Cell" ;
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier : CellIdentifier];
    if  (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle : UITableViewCellStyleDefault reuseIdentifier : CellIdentifier];
    }
    
    /* code by data src type */
    NSArray *data = [sectionData objectAtIndex:indexPath.section];
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    
    return  cell;
}

/* header title / footer title */
- (NSString *) tableView : (UITableView *) tableView titleForHeaderInSection : (NSInteger) section
{
    NSString * title = [NSString stringWithFormat : @ "HEADER %ld" , section+1];
    return  title;
}

- (NSString *) tableView : (UITableView *) tableView titleForFooterInSection : (NSInteger) section
{
    NSString * title = [NSString stringWithFormat : @ "FOOTER %ld" , section+1];
    return  title;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
