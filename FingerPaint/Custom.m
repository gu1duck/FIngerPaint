//
//  Custom.m
//  FingerPaint
//
//  Created by Jeremy Petter on 2015-05-15.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "Custom.h"

@implementation Custom

//- (void)drawRect:(CGRect)rect {
//    UIBezierPath* path = [self.delegate returnPath];
//    
//    [[UIColor redColor] setStroke];
//    [path stroke];
//}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    for (UIBezierPath* path in [self.delegate returnPaths]){
        UIBezierPath* draw = path;
        int colour = [[self.delegate returnPaths] indexOfObject:path];
        
        [[self.delegate returnColors][colour] setStroke];
        [draw stroke];
    }
}

@end
