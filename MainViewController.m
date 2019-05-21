#import "MainViewController.h"
#import "SecondViewController.h"
#import "CustomCell.h"
#import "MPThreeXController.h"

@implementation MainViewController 


- (void)viewDidLoad {
	[super viewDidLoad];


//[self setUpTabBar];


//NSMutableArray *myTableData = [[NSMutableArray alloc]init];
//myTableData = [NSMutableArray arrayWithObjects: @"Cell 1", @"Cell 2", @"Cell 3", nil];

UITableView *myTable = [[UITableView alloc]initWithFrame:CGRectMake(45, 44, 320, 440)style:UITableViewStyleGrouped];
myTable.dataSource = self;
myTable.delegate = self;
myTable.backgroundColor = [UIColor grayColor];
myTable.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin;
[self.myTable reloadData];
[self.view addSubview:myTable];
//[myTable release];



UIView *swayView=[[UIView alloc]initWithFrame:CGRectMake(30, 500,350, 200)];
    [swayView setBackgroundColor:[UIColor whiteColor]];
    swayView.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin;
    [self.view addSubview:swayView];
    [swayView release]; 

_label = [[UILabel 
alloc]initWithFrame:CGRectMake(85,0,self.view.frame.size.width,44)];
_label.text = @(" CAPITALIZED LABEL ");
_label.backgroundColor = [UIColor clearColor];
//_label.textAlignment = UITextAlignmentLeft;
[swayView addSubview:_label];

UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 70, 300, 40)];
textField.borderStyle = UITextBorderStyleRoundedRect;
textField.font = [UIFont systemFontOfSize:15];
textField.placeholder = @"enter your search here";
textField.autocorrectionType = UITextAutocorrectionTypeNo;
textField.keyboardType = UIKeyboardTypeDefault;
textField.returnKeyType = UIReturnKeyDone;
textField.clearButtonMode = UITextFieldViewModeWhileEditing;
textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;    
//textField.delegate = self;
[swayView addSubview:textField];
[textField release];

UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
[button addTarget:self 
           action:@selector(showDefault:)
 forControlEvents:UIControlEventTouchUpInside];
[button setTitle:@"Show View" forState:UIControlStateNormal];
[button setTitle:@"View Changing" forState:UIControlStateHighlighted];
button.frame = CGRectMake(90, 140, 160.0, 40.0);
[button setBackgroundColor:[UIColor blueColor]];
[swayView addSubview:button];

}


- (IBAction)showDefault:(id)sender{

SecondViewController  *second = [[[SecondViewController alloc]init]autorelease];
second.title = @"Second View Controller";
UINavigationController *navController = [[UINavigationController alloc]initWithRootViewController:second];
[self presentViewController:navController animated:YES completion:nil];

}

/*- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView 
{
}*/



#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)myTable
{
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)myTable numberOfRowsInSection:(NSInteger)section
{
    return 5; 
}

- (UITableViewCell *)tableView:(UITableView *)myTable cellForRowAtIndexPath:(NSIndexPath *)indexPath
{


    static NSString *CellIdentifier = @"Cell";

CustomCell *cell = [myTable dequeueReusableCellWithIdentifier:CellIdentifier];
if (cell == nil) {
cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    }

// Set up the cell…
 switch (indexPath.row) {
 case 0:
 cell.primaryLabel.text = @"Meeting on iPhone Development";
 cell.secondaryLabel.text = @"Sat 10:30";
 //cell.myImageView.image = [UIImage imageNamed:@"meeting_color.png"];
 break;
 case 1:
 cell.primaryLabel.text = @"Call With Client";
 cell.secondaryLabel.text = @"Planned";
// cell.myImageView.image = [UIImage imageNamed:@"call_color.png"];
 break;
 case 2:
 cell.primaryLabel.text = @"Appointment with Joey";
 cell.secondaryLabel.text = @"2 Hours";
 //cell.myImageView.image = [UIImage imageNamed:@"calendar_color.png"];
 break;
 case 3:
 cell.primaryLabel.text = @"Call With Client";
 cell.secondaryLabel.text = @"Planned";
 //cell.myImageView.image = [UIImage imageNamed:@"call_color.png"];
 break;
 case 4:
 cell.primaryLabel.text = @"Appointment with Joey";
 cell.secondaryLabel.text = @"2 Hours";
// cell.myImageView.image = [UIImage imageNamed:@"calendar_color.png"];
 break;
 default:
 break;
 
}



    //cell.textLabel.text = [_myTableData objectAtIndex:indexPath.row];
    //cell.imageView.image = [UIImage imageNamed:@"light.png"]; 


    return cell;
}

- (CGFloat)tableView:(UITableView *)myTable heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
 return 70;
}

/*- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
   return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
return YES;
}

-(BOOL)textFieldShouldClear:(UITextField *)textField
{
return YES;
}
*/

@end
