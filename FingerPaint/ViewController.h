//
//  ViewController.h
//  FingerPaint
//
//  Created by Jeremy Petter on 2015-05-15.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drawProtocol.h"

@interface ViewController : UIViewController<drawProtocol>

@property (strong, nonatomic) UIBezierPath* path;
@property (strong, nonatomic) NSArray* paths;
@property (strong, nonatomic) NSArray* colours;


@end

