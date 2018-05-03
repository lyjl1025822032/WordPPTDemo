//
//  PDFPreviewViewController.m
//  WordPPTDemo
//
//  Created by 王智垚 on 2017/9/15.
//  Copyright © 2017年 王智垚. All rights reserved.
//

#import "PDFPreviewViewController.h"

@interface PDFPreviewViewController ()<QLPreviewControllerDelegate, QLPreviewControllerDataSource>

@end

@implementation PDFPreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _previewController = [[QLPreviewController alloc] init];
    _previewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width , self.view.frame.size.height);
    _previewController.dataSource = self;
    _previewController.delegate = self;
    _previewController.currentPreviewItemIndex = 0;
    [self.view addSubview:_previewController.view];
    [_previewController reloadData];
}

- (id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index {
    return self.fileURL;
}

- (NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller {
    return 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
