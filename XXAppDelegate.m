#import "XXAppDelegate.h"
#import "MainViewController.h"

@implementation XXAppDelegate

- (BOOL)application:(UIApplication *)application 
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] 
bounds]];

  // Override point for customization after application launch
 self.window.backgroundColor = [UIColor grayColor];

 MainViewController *viewController = [[MainViewController alloc]init];
 self.window.rootViewController = viewController;
 [self.window makeKeyAndVisible];




 
  return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {

/*UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Welcome"
        message:@"App will resign active."
        delegate:self
        cancelButtonTitle:@"Testing"
        otherButtonTitles:nil];
    //Now show that alert
    [alert1 show];
    //And release it. We don't want any memory leaks ;)
    [alert1 release]; */


}


- (void)applicationDidEnterBackground:(UIApplication *)application {

/*UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Welcome"
        message:@"App did enter background."
        delegate:self
        cancelButtonTitle:@"Testing"
        otherButtonTitles:nil];
    //Now show that alert
    [alert1 show];
    //And release it. We don't want any memory leaks ;)
    [alert1 release]; */
 

}


- (void)applicationWillEnterForeground:(UIApplication *)application {

/*UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Welcome"
        message:@"App will enter foreground ."
        delegate:self
        cancelButtonTitle:@"Testing"
        otherButtonTitles:nil];
    //Now show that alert
    [alert1 show];
    //And release it. We don't want any memory leaks ;)
    [alert1 release]; */


}


- (void)applicationDidBecomeActive:(UIApplication *)application {

/*UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Welcome"
        message:@"app did become active."
        delegate:self
        cancelButtonTitle:@"Testing"
        otherButtonTitles:nil];
    //Now show that alert
    [alert1 show];
    //And release it. We don't want any memory leaks ;)
    [alert1 release]; */


}


- (void)applicationWillTerminate:(UIApplication *)application {

UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Welcome"
        message:@"app will terminate."
        delegate:self
        cancelButtonTitle:@"Testing"
        otherButtonTitles:nil];
    //Now show that alert
    [alert1 show];
    //And release it. We don't want any memory leaks ;)
    [alert1 release]; 



}



@end
