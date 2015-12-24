//
//  ViewController.m
//  GIKeychainDemo
//
//  Created by shen on 15/12/24.
//  Copyright © 2015年 shen. All rights reserved.
//

#import "ViewController.h"
#import "GIKeychain.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *accountKey=@"accountKey";
    NSString *accountName=@"Alibaba";
    NSString *accountName2=@"Netease";
    if ([GIKeychain getKeychainDataForKey:accountKey]) {
        NSLog(@"该key内容已经存在,为:%@",[GIKeychain getKeychainDataForKey:accountKey]);
        [GIKeychain addKeychainData:accountName2 forKey:accountKey];
        NSLog(@"该key内容被修改,为:%@",[GIKeychain getKeychainDataForKey:accountKey]);

    }else{
        NSLog(@"该key不存在，准备写入");
        [GIKeychain addKeychainData:accountName forKey:accountKey];
        NSLog(@"已写入，该key内容:%@",[GIKeychain getKeychainDataForKey:accountKey]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
