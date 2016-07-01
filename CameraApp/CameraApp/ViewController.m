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
 UIImagePickerControllerDelegate method
 - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(nullable NSDictionary<NSString *,id> *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0);
 - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info;
 - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    //image view set to "Aspect Fit", will keep the image aspect, fill the rest of imageView with background color.
    //image view set to "Aspect Fill", will keep the imageView aspect.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (self.imageView.image == nil){
    }else{
        }
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    self.imageView.image = [self reduceImageSize:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIImage *)reduceImageSize:(UIImage *)image {
        NSLog(@"ORIGINAL IMAGE: width-%f, height-%f", image.size.width, image.size.height);
    //creating a frame
    CGSize newSize = CGSizeMake(image.size.width/6, image.size.height/6);
    UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0);
    //Where to the frame the new painting is going to be placed
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    
    UIImage *smallImage = UIGraphicsGetImageFromCurrentImageContext();
        NSLog(@"SMALL IMAGE: width-%f, height-%f", smallImage.size.width, smallImage.size.height);
    return smallImage;
}

- (IBAction)takePicture:(UIButton *)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.modalPresentationStyle = UIModalPresentationCurrentContext;
    [imagePicker setDelegate:self];
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:imagePicker animated:NO completion:nil];
}

- (IBAction)chooseFromGallery:(UIButton *)sender {
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    imagePicker.modalPresentationStyle = UIModalPresentationCurrentContext;
    [imagePicker setDelegate:self];
    //imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:imagePicker animated:NO completion:nil];
}

@end
