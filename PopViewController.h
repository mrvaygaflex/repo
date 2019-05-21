@interface PopViewController : UIViewController <UITextFieldDelegate>


@property (nonatomic,retain) UITextField *textField;
@property (nonatomic,retain) UITextField *textField2;

@property (nonatomic,retain) UILabel *label;
@property (nonatomic,retain) UIImageView *avatarImage;


-(void)saveState:(id)sender; 
-(void)etrBase:(id)sender;
- (void)tapGesture:(id)sender;
@end
