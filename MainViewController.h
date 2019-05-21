@interface MainViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> 


@property (nonatomic, retain) UITableView *myTable;
@property (nonatomic, retain) NSMutableArray *myTableData;

@property(nonatomic, retain) UIView *swayView;
@property(strong,nonatomic) IBOutlet UIButton *button;
@property(nonatomic,retain) UITextField *textField;
@property(nonatomic,retain) UILabel *label;
//@property(nonatomic,retain) UIImageView *image;
@property (nonatomic, retain) UIScrollView *scrollView;


//- (void) setUpTabBar;
- (IBAction)showDefault:(id)sender; 
@end
