//
//  ViewController.m
//  DAPIPViewExample
//
//  Created by Daniel Amitay on 4/15/12.
//  Copyright (c) 2012 Daniel Amitay. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blackColor];
    
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    DAPIPView *pipView = [delegate pipView];
    
    UIView *mainContentView = [[UIView alloc] initWithFrame:self.view.bounds];
    mainContentView.backgroundColor = [UIColor colorWithWhite:0.5f alpha:0.5f];
    mainContentView.autoresizingMask = (UIViewAutoresizingFlexibleLeftMargin | 
                                        UIViewAutoresizingFlexibleRightMargin | 
                                        UIViewAutoresizingFlexibleTopMargin |
                                        UIViewAutoresizingFlexibleBottomMargin);
    [self.view addSubview:mainContentView];
    
    UILabel *mainViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 
                                                                       0.0f, 
                                                                       100.0f, 
                                                                       44.0f)];
    mainViewLabel.text = @"Main View";
    mainViewLabel.textColor = [UIColor whiteColor];
    mainViewLabel.center = self.view.center;
    mainViewLabel.textAlignment = UITextAlignmentCenter;
    mainViewLabel.backgroundColor = [UIColor clearColor];
    mainViewLabel.autoresizingMask = (UIViewAutoresizingFlexibleLeftMargin | 
                                      UIViewAutoresizingFlexibleRightMargin | 
                                      UIViewAutoresizingFlexibleTopMargin |
                                      UIViewAutoresizingFlexibleBottomMargin);
    [self.view addSubview:mainViewLabel];
    
    UILabel *pipViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 
                                                                       0.0f, 
                                                                       100.0f, 
                                                                       44.0f)];
    pipViewLabel.text = @"PIP View";
    pipViewLabel.font = [UIFont systemFontOfSize:14.0f];
    pipViewLabel.textColor = [UIColor whiteColor];
    pipViewLabel.center = CGPointMake(pipView.bounds.size.width/2.0f,
                                      pipView.bounds.size.height/2.0f);
    pipViewLabel.textAlignment = UITextAlignmentCenter;
    pipViewLabel.backgroundColor = [UIColor clearColor];
    [pipView addSubview:pipViewLabel];
    
    
    /*
     The below code will add an AVCaptureVideoPreviewLayer if run on a device with a camera
     */
    
    AVCaptureDeviceInput *input = nil;    
    for (AVCaptureDevice *device in [AVCaptureDevice devicesWithMediaType:AVMediaTypeVideo])
    {
        input = [[AVCaptureDeviceInput alloc] initWithDevice:device error:nil];;
        if (device.position == AVCaptureDevicePositionFront)
        {
            break;
        }
    }
    
    if (!input)
        return;
    
    AVCaptureSession *session = [[AVCaptureSession alloc] init];
    [session addInput:input];
    
    UIView *presentationView = nil;
    if (input.device.position == AVCaptureDevicePositionFront)
        presentationView = pipView;
    else
        presentationView = mainContentView;
    
    AVCaptureVideoPreviewLayer *captureVideoPreviewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:session];
    captureVideoPreviewLayer.frame = presentationView.bounds;
    captureVideoPreviewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
    [presentationView.layer addSublayer:captureVideoPreviewLayer];
    [captureVideoPreviewLayer.session startRunning];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
        return (interfaceOrientation == UIInterfaceOrientationPortrait);
    else
        return YES;
}

@end
