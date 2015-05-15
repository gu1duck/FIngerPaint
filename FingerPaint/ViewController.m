//
//  ViewController.m
//  FingerPaint
//
//  Created by Jeremy Petter on 2015-05-15.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "ViewController.h"
#import "Custom.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet Custom *slate;
@property (assign, nonatomic) int drawColour;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slate.delegate = self;
    self.slate.userInteractionEnabled = YES;
    // Do any additional setup after loading the view, typically from a nib.
    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(drawAThing:)];
    [self.slate addGestureRecognizer:pan];
    self.paths = @[[UIBezierPath bezierPath],[UIBezierPath bezierPath],[UIBezierPath bezierPath],
                   [UIBezierPath bezierPath],[UIBezierPath bezierPath],[UIBezierPath bezierPath]];
    self.colours = @[[UIColor redColor], [UIColor orangeColor], [UIColor yellowColor],
                     [UIColor greenColor], [UIColor blueColor], [UIColor purpleColor]];
    self.path = [UIBezierPath bezierPath];
    self.drawColour = 0;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)redButton:(id)sender {
    self.drawColour = 0;
}
- (IBAction)orangeButton:(id)sender {
    self.drawColour = 1;
}
- (IBAction)yellowButton:(id)sender {
    self.drawColour = 2;
}
- (IBAction)greenButton:(id)sender {
    self.drawColour = 3;
}
- (IBAction)blueButton:(id)sender {
    self.drawColour = 4;
}
- (IBAction)purpleButton:(id)sender {
    self.drawColour = 5;
}

//- (void)drawAThing:(UIGestureRecognizer*) gesture{
//    if (gesture.state == UIGestureRecognizerStateBegan){
//        [self.path moveToPoint:[gesture locationInView:self.slate]];
//    }
//    if (gesture.state == UIGestureRecognizerStateChanged){
//        [self.path addLineToPoint:[gesture locationInView:self.slate]];
//    }
//    if (gesture.state == UIGestureRecognizerStateEnded){
//        //[self.path closePath];
//    }
//    [self.slate setNeedsDisplay];
//}

- (void)drawAThing:(UIGestureRecognizer*) gesture{
    if (gesture.state == UIGestureRecognizerStateBegan){
        [self.paths[self.drawColour] moveToPoint:[gesture locationInView:self.slate]];
    }
    if (gesture.state == UIGestureRecognizerStateChanged){
        [self.paths[self.drawColour] addLineToPoint:[gesture locationInView:self.slate]];
    }
    //if (gesture.state == UIGestureRecognizerStateEnded){
        //[self.path closePath];
    //}
    [self.slate setNeedsDisplay];
}

- (UIBezierPath*)returnPath{
    return self.path;
}

- (NSArray*)returnPaths{
    return self.paths;
}

- (NSArray*)returnColors{
    return self.colours;
}


@end
