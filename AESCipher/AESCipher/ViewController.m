//
//  ViewController.m
//  AESCipher
//
//  Created by Welkin Xie on 8/13/16.
//  Copyright © 2016 WelkinXie. All rights reserved.
//
//  https://github.com/WelkinXie/AESCipher-iOS
//

#import "ViewController.h"
#import "AESCipher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSData *data = [NSJSONSerialization dataWithJSONObject:@{@"mobilephone":@18103857825,@"token":@"12345t678"} options:0 error:nil];
    
    NSString *stringData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    
    NSString * encryptData = aesEncryptString(stringData,@"cjolAppAES201710");
    
    NSLog(@"%@", encryptData);
    
    NSString *decryptedText = aesDecryptString(encryptData, @"cjolAppAES201710");
    
    NSLog(@"%@", decryptedText);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
