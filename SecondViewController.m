#import "SecondViewController.h"
#import "MainViewController.h"
#import "PopViewController.h"

@implementation SecondViewController 


- (void)viewDidLoad {
	[super viewDidLoad];


//self.view.backgroundColor = [UIColor whiteColor];
         
        [self.view setBackgroundColor:[UIColor grayColor]];
      
        /*UIImageView *background = [[UIImageView alloc]initWithFrame:self.view.frame];
        background.image = [UIImage imageNamed:@"train-min.png"];
        [self.view addSubview:background];*/

      


UIBarButtonItem *rgtButton = [[UIBarButtonItem alloc] initWithTitle:@"Settings" style:UIBarButtonItemStylePlain target:self action:@selector(popoverButtonPressed)];
    self.navigationItem.rightBarButtonItem = rgtButton;

UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss"     style:UIBarButtonItemStyleBordered target:self action:@selector(btnClick)];
self.navigationItem.leftBarButtonItem = btn;
 
UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
[button addTarget:self 
           action:@selector(showAlert:)
 forControlEvents:UIControlEventTouchUpInside];
[button setTitle:@"Login View" forState:UIControlStateNormal];
[button setTitle:@"View Changing" forState:UIControlStateHighlighted];
button.frame = CGRectMake(130, 500, 160.0, 40.0);
[button setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
[button setBackgroundColor:[UIColor orangeColor]];
[self.view addSubview:button];

}

-(IBAction)showAlert:(id)sender {
    
    UIAlertController * alertController = [UIAlertController alertControllerWithTitle: @"Login"
                                                                              message: @"Input username and password"
                                                                       preferredStyle:UIAlertControllerStyleAlert];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"name";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.keyboardAppearance = UIKeyboardAppearanceDark;
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"password";
        textField.textColor = [UIColor blueColor];
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.keyboardAppearance = UIKeyboardAppearanceDark;
        textField.secureTextEntry = YES;
    }];
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSArray * textfields = alertController.textFields;
        UITextField * namefield = textfields[0];
        UITextField * passwordfiled = textfields[1];
        NSLog(@"%@:%@",namefield.text,passwordfiled.text);
        
    }]];
    [self presentViewController:alertController animated:YES completion:nil];
   

}

- (IBAction)popoverButtonPressed {

  PopViewController  *popView = [[[PopViewController alloc]init]autorelease];

popView.modalPresentationStyle = UIModalPresentationPopover;
popView.preferredContentSize = CGSizeMake(150, 300);

UIPopoverPresentationController *popover =  popView.popoverPresentationController;
popover.delegate = self;
popover.sourceView = self.view;
popover.sourceRect = CGRectMake(325,15,50,50);
popover.permittedArrowDirections = UIPopoverArrowDirectionUp;

// display the controller in the usual way
[self presentViewController:popView animated:YES completion:nil];


}

- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller{
    return UIModalPresentationNone;
}
/*
- (BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popController{
    return NO;   
}
*/


-(void)btnClick{

[self dismissViewControllerAnimated:YES completion:nil];

}
@end


