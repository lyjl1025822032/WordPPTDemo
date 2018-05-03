//
//  PDFPreviewViewController.h
//  WordPPTDemo
//
//  Created by 王智垚 on 2017/9/15.
//  Copyright © 2017年 王智垚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>

@interface PDFPreviewViewController : UIViewController
@property (nonatomic, strong) QLPreviewController *previewController;
@property (nonatomic, strong) NSURL *fileURL;
@end
