//
//  ViewController.m
//  ZZQAvatarPicker
//
//  Created by 郑志强 on 2018/10/31.
//  Copyright © 2018 郑志强. All rights reserved.
//

#import "ViewController.h"
#import "ZZQAvatarPicker.h"
#import "ZZQAuthorizationManager.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *sender = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    sender.backgroundColor = [UIColor redColor];
    [sender addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sender];
    
}



- (void)btnClick:(UIButton *)sender {
    
    [ZZQAvatarPicker startSelected:^(UIImage * _Nonnull image) {
        if (image) {
            [sender setImage:image forState:UIControlStateNormal];
        }
    }];
}


@end
