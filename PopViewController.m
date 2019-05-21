#import "PopViewController.h"
#import "MainViewController.h"

@implementation PopViewController {
 
}

- (void)viewDidLoad {
	[super viewDidLoad];

UIImageView *background = [[UIImageView alloc]initWithFrame:self.view.frame];
        background.image = [UIImage imageNamed:@"blue.png"];
        [self.view addSubview:background];

//self.view.backgroundColor = [UIColor yellowColor]; 

UIView *swayView=[[UIView alloc]initWithFrame:CGRectMake(0, 150,50, 60)];
UIImageView *avatarImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 60)];
UIImage *image = [UIImage imageNamed:@"mountain.png"];
avatarImage.image = image;
[avatarImage setUserInteractionEnabled:YES];
 //[avatarImage sizeToFit];
 //[swayView setBackgroundColor:[UIColor whiteColor]];
    [swayView addSubview:avatarImage];
    [self.view addSubview:swayView];

UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self  action:@selector(tapGesture:)];
tapGesture1.numberOfTapsRequired = 1;
// [tapGesture1 setDelegate:self];
[avatarImage addGestureRecognizer:tapGesture1];
[tapGesture1 release];

UITextField *textField = [[UITextField  alloc] initWithFrame:CGRectMake(25, 50, 100, 30)];
   textField.borderStyle = UITextBorderStyleRoundedRect;
   textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
   textField.keyboardAppearance = UIKeyboardAppearanceDark;
   textField.placeholder = @"username";
   [textField setFont:[UIFont boldSystemFontOfSize:12]];
   [self.view addSubview:textField]; 
   textField.delegate = self;

UITextField *textField2 = [[UITextField  alloc] initWithFrame:CGRectMake(25, 100, 100, 30)];
   textField2.borderStyle = UITextBorderStyleRoundedRect;
   textField2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
   textField2.keyboardAppearance = UIKeyboardAppearanceDark;
   textField2.placeholder = @"password"; 
   textField2.secureTextEntry = YES;
   [textField2 setFont:[UIFont boldSystemFontOfSize:12]];
   [self.view addSubview:textField2];
   textField2.delegate = self;

UIButton *btn = [UIButton buttonWithType: UIButtonTypeRoundedRect];
[btn addTarget:self 
           action:@selector(saveState:)
 forControlEvents:UIControlEventTouchUpInside];
[btn setTitle:@"Sav3" forState:UIControlStateNormal];
[btn setTitle:@"Saved" forState:UIControlStateHighlighted];
btn.frame = CGRectMake(55, 170, 40.0, 20.0);
[btn setBackgroundColor:[UIColor orangeColor]]; 
[self.view addSubview:btn];

UIButton *btn2 = [UIButton buttonWithType: UIButtonTypeRoundedRect];
[btn2 addTarget:self 
           action:@selector(etrBase:)
 forControlEvents:UIControlEventTouchUpInside];
[btn2 setTitle:@"L0gin" forState:UIControlStateNormal];
[btn2 setTitle:@"Logged" forState:UIControlStateHighlighted];
btn2.frame = CGRectMake(100, 170, 40.0, 20.0);
[btn2 setBackgroundColor:[UIColor purpleColor]]; 
[self.view addSubview:btn2];

 }

-(void)saveState:(id)sender
{
 
}

-(void)etrBase:(id)sender
{

}

- (void)tapGesture:(id)sender
{

}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info 
{

}


-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES; 
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{

}
 
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
 

}

- (void)textFieldDidBeginEditing:(UITextField *)textField 
{

}
- (void)textFieldDidEndEditing:(UITextField *)textField 
{

}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
   [textField resignFirstResponder];
   return YES;
}



-(void)scrollViewDidEndDecelerating:(UIScrollView *)MyScrollVw{
   NSLog(@"Did end decelerating");
   //do your code here
}   
-(void)scrollViewDidScroll:(UIScrollView *)MyScrollVw{
   NSLog(@"Did scroll");
   //do your code here
}
-(void)scrollViewDidEndDragging:(UIScrollView *)MyScrollVw willDecelerate:(BOOL)decelerate{
    NSLog(@"Did end dragging");
   //do your code here
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)MyScrollVw{
    NSLog(@"Did begin decelerating");
   //do your code here
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)MyScrollVw{
   NSLog(@"Did begin dragging");
   //do your code here
}
  
@end
