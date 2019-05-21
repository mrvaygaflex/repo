@interface SecondViewController : UIViewController <UIPopoverPresentationControllerDelegate>

@property(nonatomic, strong) UIBarButtonItem *rgtButton;


- (IBAction)popoverButtonPressed;

-(void)btnClick;

@end
