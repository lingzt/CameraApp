//
//  ViewController.m
//  CameraApp
//
//  Created by ling toby on 6/30/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
/*
 - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0);
 - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info;
 - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (self.imageView.image == nil){
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.modalPresentationStyle = UIModalPresentationCurrentContext;
        [imagePicker setDelegate:self];
        //imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:imagePicker animated:NO completion:nil];
    }else{
        
        }
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








@end
