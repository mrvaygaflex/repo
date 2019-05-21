#import <AVFoundation/AVFoundation.h>

@interface MPThreeXController: UIViewController  <UITableViewDelegate, UITableViewDataSource>
{
 UITableView *myTable; 
 NSMutableArray *textLabel;
 NSMutableArray *detailTextLabel;
 //UIView *topMenuView;

/*
BOOL userChangingTimeSlider; //Use to update slider value
NSTimeInterval duration; //MP3 files duration
NSMutableArray *array_PathPlayingFiles; //Path of mp3
NSString *str_FilePath; //Runtime pth of MP3's
NSInteger currentIndexOfArray //Crrnt plyng song path*/

UINavigationBar *navBar;

}
@property (nonatomic, retain) UIView *topMenuView;

//@property (nonatomic, retain) UINavigationBar *navBar;
/*@property (nonatomic, retain) AVAudioPlayer *player;
@property (nonatomic, retain) NSTimer *timer_Update;
@property (nonatomic, retain) IBOutlet UIButton *button_PlayPause;
@property (nonatomic, retain) IBOutlet UISlider *slider_Time;
@property (nonatomic, retain) IBOutlet UILabel *lblTimeElapsed, *lblTimeRemainig;
@property (nonatomic, retain) UIImage *image_Play;
@property (nonatomic, retain) UIImage *image_pause;

- (void)setAudioToPlay;
- (void)updatePlayPauseImageOnBtn;
- (void)updateCurrentTimeSliderAndLabel;
- (void)toggling_PlayBack;
- (IBAction)playPauseButtonPressed;
- (NSString *)formatTimeString:(NSTimeInterval)s 
asNegative:(BOOL)negative; // clclte string value crnt time



- (IBAction)timeSliderTouchDown;
- (IBAction)timeSliderTouchUp;

- (IBAction)rewButtonWasPressed;
- (IBAction)ffButtonWasPressed; 
*/
@end
