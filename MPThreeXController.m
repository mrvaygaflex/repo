#import "MPThreeXController.h"

@implementation MPThreeXController   

- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor brownColor];

UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 350, self.view.bounds.size.width, 1)];
lineView.backgroundColor = [UIColor clearColor];
[self.view addSubview:lineView];
lineView.layer.borderColor = [UIColor blackColor].CGColor;
lineView.layer.borderWidth = 1.0f;
[lineView release];


UIView *bigView = [[UIView alloc] initWithFrame:CGRectMake(10,49,300,300)];
 bigView.backgroundColor = [UIColor colorWithRed:66.0f/255.0f
		green:79.0f/255.0f
		 blue:91.0f/255.0f
		alpha:1.0f];
    [self.view addSubview:bigView];


UIWebView *webview = [[UIWebView alloc]initWithFrame:CGRectMake(0,0,300,300)];
    NSString *url = @"http://www.facebook.com";
    NSURL *nsurl = [NSURL URLWithString:url];
    NSURLRequest *nsrequest = [NSURLRequest requestWithURL:nsurl];
    [webview loadRequest:nsrequest];
    [bigView addSubview:webview];


UIView *topMenuView = [[UIView alloc] 
initWithFrame:CGRectMake(50, 300, 24, 80)];
//topMenuView.hidden = YES;
topMenuView.backgroundColor = [UIColor brownColor];
topMenuView.layer.zPosition = MAXFLOAT;
[self.view addSubview:topMenuView];
[topMenuView setAlpha:0.0f];
//[self.view bringSubviewToFront:topMenuView];
topMenuView.layer.borderColor = [UIColor blackColor].CGColor;
topMenuView.layer.borderWidth = 2.0f;
[topMenuView release];

UIView *gestureView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 55,25)];
gestureView.backgroundColor = [UIColor redColor];
gestureView.layer.borderColor = [UIColor redColor].CGColor;
gestureView.layer.borderWidth = 1.0f;
[topMenuView addSubview:gestureView];
[gestureView release];

[UIView animateWithDuration:2.0
		      delay:0.1
		    options: UIViewAnimationCurveEaseIn | UIViewAnimationOptionAllowUserInteraction
		 animations:^{
		     topMenuView.frame = CGRectMake(50, 417, 55, 80);
		     [topMenuView setAlpha:1.0f];
		 } 
		 completion:^(BOOL finished){
		 }];
[self.view addSubview:topMenuView];

UIButton *menuButt = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 55,25)];
[menuButt addTarget:self action:@selector(:) forControlEvents:UIControlEventTouchUpInside];
[menuButt setBackgroundColor:[UIColor grayColor]];
UIImage *buttImage = [UIImage imageNamed:@"search.png"];
[menuButt setImage:buttImage forState:UIControlStateNormal];
[gestureView addSubview:menuButt];

UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self 
action:@selector(top_menu:)];
[topMenuView addGestureRecognizer:gestureRecognizer];
gestureRecognizer.cancelsTouchesInView = NO;  // this prevents the gesture recognizers to 'block'
//gestureView.userInteractionEnabled = YES; 
[gestureRecognizer release];

 textLabel = [[NSMutableArray alloc]init];
textLabel = [NSMutableArray arrayWithObjects:@"", @"",nil];


detailTextLabel = [[NSMutableArray alloc]init];
detailTextLabel = [NSMutableArray arrayWithObjects:@"", @"",nil];


    myTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 355,self.view.bounds.size.width, 
110)style:UITableViewStylePlain];
    myTable.delegate = self;
    myTable.dataSource = self;
    [self.view addSubview:myTable];
    [myTable reloadData];

navBar = [[UINavigationBar alloc] init];
navBar.frame = CGRectMake(0, 0, self.view.frame.size.width, 44);
UINavigationItem *navItem = [[[UINavigationItem alloc]
initWithTitle:@"Main View"] autorelease];

UIBarButtonItem *rightButton = [[[UIBarButtonItem alloc] initWithTitle:@"Next View" 
style:UIBarButtonItemStylePlain target:self action:@selector(rightButtonPressed)] autorelease];
navItem.rightBarButtonItem = rightButton;

UIBarButtonItem *leftButton = [[[UIBarButtonItem alloc] initWithTitle:@"Previous" 
style:UIBarButtonItemStylePlain target:self action:@selector(leftButtonPressed)] autorelease];
navItem.leftBarButtonItem = leftButton;

navBar.barStyle = UIBarStyleDefault;
navBar.items = [NSArray arrayWithObject:navItem];
[self.view addSubview:navBar];



UIView *mediaView = [[UIView alloc] initWithFrame:CGRectMake(45,494,226,48)];
 mediaView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:mediaView];

UIButton *btn_Display = [[UIButton alloc] initWithFrame:CGRectMake(20, 4, 25,25)];
[btn_Display setTitle:@"Touch!" forState:UIControlStateNormal];
[btn_Display addTarget:self action:@selector(dismissView:) 
forControlEvents:UIControlEventTouchUpInside];
[btn_Display setBackgroundColor:[UIColor orangeColor]];
btn_Display.titleLabel.font = [UIFont systemFontOfSize:8];
UIImage *btnImage = [UIImage imageNamed:@"top_menu.png"];
[btn_Display setImage:btnImage forState:UIControlStateNormal];
[mediaView addSubview:btn_Display];

UIButton *btn_Display2 = [[UIButton alloc] initWithFrame:CGRectMake(76, 4, 25,25)];
[btn_Display2 setTitle:@"Touch!" forState:UIControlStateNormal];
[btn_Display2 addTarget:self action:@selector(displayMessage:) forControlEvents:UIControlEventTouchUpInside];
[btn_Display2 setBackgroundColor:[UIColor orangeColor]];
btn_Display2.titleLabel.font = [UIFont systemFontOfSize:8];
UIImage *btnImage2 = [UIImage imageNamed:@"rewind.png"];
[btn_Display2 setImage:btnImage2 forState:UIControlStateNormal];
[mediaView addSubview:btn_Display2];

UIButton *btn_Display3 = [[UIButton alloc] initWithFrame:CGRectMake(128, 4, 25,25)];
[btn_Display3 setTitle:@"Touch!" forState:UIControlStateNormal];
[btn_Display3 addTarget:self action:@selector(mediaFunc) forControlEvents:UIControlEventTouchUpInside];
[btn_Display3 setBackgroundColor:[UIColor orangeColor]];
btn_Display3.titleLabel.font = [UIFont systemFontOfSize:8];
UIImage *btnImage3 = [UIImage imageNamed:@"play.png"];
[btn_Display3 setImage:btnImage3 forState:UIControlStateNormal];
[mediaView addSubview:btn_Display3];

UIButton *btn_Display4 = [[UIButton alloc] initWithFrame:CGRectMake(180, 4, 25,25)];
[btn_Display4 setTitle:@"Touch!" forState:UIControlStateNormal];
[btn_Display4 addTarget:self action:@selector(displayMessage:) forControlEvents:UIControlEventTouchUpInside];
[btn_Display4 setBackgroundColor:[UIColor orangeColor]];
btn_Display4.titleLabel.font = [UIFont systemFontOfSize:8];
UIImage *btnImage4 = [UIImage imageNamed:@"fast_forward.png"];
[btn_Display4 setImage:btnImage4 forState:UIControlStateNormal];
[mediaView addSubview:btn_Display4];

UILabel *lbl1 = [[UILabel alloc] init];
[lbl1 setFrame:CGRectMake(0,32,100,20)];
lbl1.backgroundColor = [UIColor clearColor];
lbl1.textColor = [UIColor whiteColor];
lbl1.font = [lbl1.font fontWithSize:12];
lbl1.userInteractionEnabled=YES;
lbl1.text = @"00:00";	 
[mediaView addSubview:lbl1];

/*UITapGestureRecognizer* gesture = [[UITapGestureRecognizer alloc] initWithTarget:self 
action:@selector(userTappedOnLink:)];
// if labelView is not set userInteractionEnabled, you must do so
[labelView setUserInteractionEnabled:YES];
[labelView addGestureRecognizer:gesture];*/

UILabel *lbl2 = [[UILabel alloc] init];
[lbl2 setFrame:CGRectMake(195,32,100,20)];
lbl2.backgroundColor = [UIColor clearColor];
lbl2.textColor = [UIColor whiteColor];
lbl2.font = [lbl2.font fontWithSize:12];
lbl2.userInteractionEnabled=YES;
lbl2.text = @"00:00";
[mediaView addSubview:lbl2];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath 
*)indexPath{

    static NSString *cellIdentifier = @"cell";

UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];

   if (cell == nil) {
	cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle 
reuseIdentifier:cellIdentifier];

  cell.textLabel.text = [textLabel objectAtIndex:indexPath.row];
  cell.detailTextLabel.text = [detailTextLabel objectAtIndex:indexPath.row];

/*  UIImageView *imv = [[UIImageView alloc]initWithFrame:CGRectMake(290,2, 30, 40)];
  imv.image=[UIImage imageNamed:@"Hitman.png"];
  [cell.contentView addSubview:imv];
  [imv release];*/


  tableView.separatorColor = [UIColor yellowColor];
  cell.backgroundColor = [UIColor orangeColor];

//cell.accessoryType = UITableViewCellAccessoryCheckmark;
cell.selectionStyle = UITableViewCellSelectionStyleGray;

  }

   return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

   return [textLabel count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath 
*)indexPath 
{

   return 55;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

[tableView deselectRowAtIndexPath:indexPath animated:YES];

}
- (IBAction)dismissView:(id)sender{
    [self.topMenuView setHidden:TRUE];

}
- (void)top_menu:(id)sender
{

/*
UIWebView *webview=[[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 1024,768)];
    NSString *url=@"http://www.google.com";
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webview loadRequest:nsrequest];
    [self.view addSubview:webview];
*/

    UIAlertController *view = [UIAlertController
				 alertControllerWithTitle:@"Custom Alert"
				 message:@"Current options prefered"
				 preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *ok = [UIAlertAction
			 actionWithTitle:@"OK"
			 style:UIAlertActionStyleDefault
			 handler:^(UIAlertAction * action)
			 {
			  }];
     UIAlertAction *Social = [UIAlertAction
			 actionWithTitle:@"Social"
			 style:UIAlertActionStyleDefault
			 handler:^(UIAlertAction * action){ }];
    [view addAction:ok];
    [view addAction:Social];
    [self presentViewController:view animated:YES completion:nil];


}
@end
