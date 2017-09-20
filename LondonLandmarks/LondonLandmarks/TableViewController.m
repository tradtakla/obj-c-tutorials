//
//  TableViewController.m
//  LondonLandmarks
//
//  Created by Karen Najem on 9/20/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DetailViewController.h"


@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    title = @[@"Big Ben",
              @"Buckingham Palace",
              @"London Eye",
              @"St Paul's Cathedral",
              @"Tower Bridge",
              @"Westminster Abbey"];
    
    description = @[@"London SW1A 0AA, UK",
                    @"London SW1A 1AA, UK",
                    @"London SE1 7PB, UK",
                    @"London EC4M 8AD, UK",
                    @"London SE1 2UP, UK",
                    @"London SW1P 3PA, UK"];
    
    image = @[@"BigBen",
              @"BuckinghamPalace",
              @"LondonEye",
              @"St-Pauls",
              @"TowerBridge",
              @"WestminsterAbbey"];
    
    [[self navigationItem] setBackBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return title.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.cellTitle.text = title[indexPath.row];
    cell.cellDescription.text = description[indexPath.row];
    cell.cellImageView.image =[UIImage imageNamed:image[indexPath.row]];
    cell.cellTitle.textColor = [UIColor colorWithRed:35.0/255.0 green:90.0/255.0 blue:141.0/255.0 alpha:1.0];
    return cell;
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        DetailViewController *detailView = [segue destinationViewController];
        NSIndexPath *myindexPath = [self.tableView indexPathForSelectedRow];
        
        int row = (int)[myindexPath row];
        detailView.detailModal = @[title[row], description[row], image[row]];
    }
    
}


@end
