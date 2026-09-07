#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Set a solid background color
    self.view.backgroundColor = [UIColor systemBackgroundColor];

    // Add a simple greeting label to the center of the screen
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    label.center = self.view.center;
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"Welcome to My Custom App!";
    label.font = [UIFont boldSystemFontOfSize:24];
    label.textColor = [UIColor labelColor];

    [self.view addSubview:label];
}

@end
