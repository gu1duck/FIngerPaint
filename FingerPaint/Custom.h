//
//  Custom.h
//  FingerPaint
//
//  Created by Jeremy Petter on 2015-05-15.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drawProtocol.h"

@interface Custom : UIView
@property (strong, nonatomic) id<drawProtocol> delegate;

@end
