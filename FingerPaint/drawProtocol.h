//
//  drawProtocol.h
//  FingerPaint
//
//  Created by Jeremy Petter on 2015-05-15.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol drawProtocol <NSObject>

- (UIBezierPath*)returnPath;
- (NSArray*)returnPaths;
- (NSArray*)returnColors;

@end
