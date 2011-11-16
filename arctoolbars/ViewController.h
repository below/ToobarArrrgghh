#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, weak) UIToolbar *weakToolbar;
@property (nonatomic, strong) UIToolbar *strongToolbar;

@property (nonatomic, weak) UIButton *button;
@end
