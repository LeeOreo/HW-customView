
//
//  OreoTableViewController.m
//  HW-customView
//
//  Created by 李育豪 on 2015/4/6.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "OreoTableViewController.h"
#import "OreoContent.h"
#import "OreoTableViewCell.h"
#import "OreoCustomTableViewCell.h"

@interface OreoTableViewController ()

@property (nonatomic, strong) NSMutableArray *feedArray;

@end

@implementation OreoTableViewController

- (void)awakeFromNib {
    _feedArray = [[NSMutableArray alloc] init];
    
    // Prepare our objects
    OreoContent *firstData = [[OreoContent alloc] init];
    firstData.name = @"豆花妹";
    firstData.date = @"4/7 10:00am";
    firstData.descriptions = @"我愛 Oreo";
    firstData.imageName = @"豆花妹1";
    
    [_feedArray addObject:firstData];
    
    OreoContent *secondData = [[OreoContent alloc] init];
    secondData.name = @"空姐";
    secondData.date = @"4/2 9:00am";
    secondData.descriptions = @"Oreo 最帥!";
    secondData.imageName = @"豆花妹2";

    
    [_feedArray addObject:secondData];
    
    OreoContent *thirdData = [[OreoContent alloc] init];
    thirdData.name = @"家教";
    thirdData.date = @"4/1 11:00am";
    thirdData.descriptions = @"弟弟在哪裡？";
    thirdData.imageName = @"豆花妹3";

    
    [_feedArray addObject:thirdData];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [_feedArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (_feedArray.count >=3 && indexPath.row == 2) {
        
        NSString *Identifier = @"CustomContent";
        
        OreoCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
        
        if (!cell) {
            cell = [[OreoCustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
        }
        
        OreoContent *content = [_feedArray objectAtIndex:indexPath.row];
        cell.nameLabel.text = content.name;
        
        cell.dateLabel.text = content.date;
        
        cell.userImageView.image = [UIImage imageNamed:content.imageName];
        
        cell.descriptions.text = content.descriptions;
        
        return cell;
    }
    
    OreoCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"OreoTableView" forIndexPath:indexPath];
    
    // Configure the cell...
    OreoContent *content = [_feedArray objectAtIndex:indexPath.row];
    cell.nameLabel.text = content.name;
    
    cell.dateLabel.text = content.date;
    
    cell.userImageView.image = [UIImage imageNamed:content.imageName];
    
    cell.descriptions.text = content.descriptions;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (_feedArray.count >=3 && indexPath.row == 2) {
        return 160;
    }
    return 280;
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
