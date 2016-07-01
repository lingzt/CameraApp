//
//  ViewController.h
//  CameraApp
//
//  Created by ling toby on 6/30/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end

