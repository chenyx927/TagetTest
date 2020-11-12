//
//  ViewController.m
//  TagetTest
//
//  Created by 陈永叙 on 2020/11/1.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#if DEMO
#define taget_tag 1
#else
#define taget_tag 0
#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (taget_tag) {
        self.view.backgroundColor = [UIColor greenColor];
    }else{
        self.view.backgroundColor = [UIColor redColor];
    }

    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSURL *url = [NSURL URLWithString:@"red://chenyx/jump?name=chen"];
    if (taget_tag) {
        url = [NSURL URLWithString:@"red://chenyx/jump?name=chen"];
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            if (success) {
                NSLog(@"跳转成功");
            }
            
        }];
    }else{
        url = [NSURL URLWithString:@"green://chenyx/jump?name=chen"];
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            if (success) {
                NSLog(@"跳转成功");
            }
        }];
    }
}



@end
