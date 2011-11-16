#import "ViewController.h"

@implementation ViewController
@synthesize strongToolbar, weakToolbar, button;

- (void) loadView {
    UIView *rootView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];
    
    // First, I am adding a weak toolbar
    self.weakToolbar = [[UIToolbar alloc] init];
    [self.weakToolbar sizeToFit];
    self.weakToolbar.tintColor = [UIColor blueColor];
    UIBarItem *weakItem = [[UIBarButtonItem alloc] initWithTitle:@"Weak" style:UIBarButtonItemStylePlain
                                                          target:nil action:nil];
    self.weakToolbar.items = [NSArray arrayWithObject:weakItem];
    [rootView addSubview:self.weakToolbar];
    
    // Then a strong toolbar
    self.strongToolbar = [[UIToolbar alloc] init];
    [self.strongToolbar sizeToFit];
    // Position it at the bottom
    CGRect frame = self.strongToolbar.frame;
    frame.origin.y = rootView.bounds.size.height - frame.size.height;
    self.strongToolbar.frame = frame;
    self.strongToolbar.tintColor = [UIColor redColor];
    UIBarItem *strongItem = [[UIBarButtonItem alloc] initWithTitle:@"Strong" style:UIBarButtonItemStylePlain
                                                            target:nil action:nil];
    self.strongToolbar.items = [NSArray arrayWithObject:strongItem];
    [rootView addSubview:self.strongToolbar];
    
    // For comparison, a weak button
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.button setTitle:@"I am weak" forState:UIControlStateNormal];
    [self.button setTitle:@"Ouch! Bully!" forState:UIControlStateHighlighted];
    [self.button sizeToFit];
    self.button.center = rootView.center;
    [rootView addSubview:self.button];
    
    self.view = rootView;
}
@end
