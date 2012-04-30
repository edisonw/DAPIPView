//
//  DAPIPView.h
//  DAPIPViewExample
//
//  Created by Daniel Amitay on 4/15/12.
//  Copyright (c) 2012 Daniel Amitay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DAPIPView : UIView

@property (nonatomic) UIEdgeInsets borderInsets;

- (void)moveToTopLeftAnimated:(BOOL)animated;
- (void)moveToTopRightAnimated:(BOOL)animated;
- (void)moveToBottomLeftAnimated:(BOOL)animated;
- (void)moveToBottomRightAnimated:(BOOL)animated;

@end
