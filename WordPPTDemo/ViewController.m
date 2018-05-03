//
//  ViewController.m
//  WordPPTDemo
//
//  Created by 王智垚 on 2017/9/14.
//  Copyright © 2017年 王智垚. All rights reserved.
//

#import "ViewController.h"
#import "PDFPreviewViewController.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"69966" ofType:@"txt"];
//    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"平台与客户端消息交互规范" ofType:@"doc"];
    NSURL *URL = [NSURL fileURLWithPath:filePath];
    PDFPreviewViewController *pdfLookVC = [[PDFPreviewViewController alloc]init];
    pdfLookVC.fileURL = URL;//本地图片的url
    [self presentViewController:pdfLookVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
