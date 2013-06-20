//
//  View.m
//  Jun20
//
//  Created by Udo Hoppenworth on 6/20/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import "View.h"

/*
 Bits 16 to 23 inclusive of the color represent the amount of red in the color.
 Change these bits to a fraction in the range 0 to 1 inclusive.
 Similarly, bits 8 to 15 inclusive represent the amount of green;
 bits 0 to 7 inclusive represent the amount of blue.
 */

#define RED(color)	(((color) >> 2*8 & 0xFF) / 255.0)
#define GREEN(color)	(((color) >> 1*8 & 0xFF) / 255.0)
#define BLUE(color)	(((color) >> 0*8 & 0xFF) / 255.0)



@implementation View

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//        NSLog(@"custom UIView initialized");
////        self.backgroundColor = [UIColor yellowColor];
//        self.backgroundColor = [UIColor colorWithRed: 1.0 green: 0.6 blue: 0.1 alpha: 0.85];
//        
//        self.theString = @"Hello, World!";
//		point = CGPointZero;
//		font = [UIFont systemFontOfSize: 32];
//        
////        unsigned color = 0xFF00FF;	//purple
////        self.backgroundColor = [UIColor colorWithRed: RED(color) green: GREEN(color) blue: BLUE(color) alpha: 1.0];
//        
//        //Keep the size of the view the same,
//		//but move the origin to the center of the view.
//		CGFloat w = self.bounds.size.width;
//		CGFloat h = self.bounds.size.height;
//		self.bounds = CGRectMake(-w / 2, -h / 2, w, h);
//    }
//    return self;
//}

-(id)initWithFrame:(CGRect)frame string:(NSString *)s backgroundColor:(UIColor *)c point:(CGPoint)p font:(UIFont *)f {
    self = [super initWithFrame: frame];
	if (self != nil) {
		self.backgroundColor = c;
		self.theString = s;
		point = p;
		font = f;
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
//    UIFont *font = [UIFont italicSystemFontOfSize:(0.4 * 72)];
//    NSString *string = @"Hello, World!";
//    [string drawInRect:rect withFont:font];
    
//    [@"Hello, World!" drawAtPoint:CGPointMake(50.0, 200.0) withFont:[UIFont systemFontOfSize:32.0]];
//    [@"Hello, World!" drawAtPoint:CGPointZero withFont:[UIFont systemFontOfSize:32.0]];
    
//    NSString *theString = @"Hello, World!";
//    NSString *theString = @"ნღძႳႢ!";
    
//    UIDevice *device = [UIDevice currentDevice];
//    NSString *theString = device.systemVersion;
    
    
    NSDate *myDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"MMMM d, yyyy"];
    self.theString = [dateFormatter stringFromDate:myDate];
    
    
//    CGSize size = [theString sizeWithFont:font];
//	CGRect b = self.bounds;
//	CGFloat x = b.origin.x + (b.size.width - size.width) / 2;
//	CGFloat y = b.origin.y + (b.size.height - size.height) / 2;
//	CGPoint point = CGPointMake(x, y);
//    
//    [theString drawAtPoint:point withFont:font];
    
//    NSURL *url = [[NSURL alloc] initWithString:
//                  @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
//    
//	NSError *error;
//	NSString *theString = [[NSString alloc]
//                        initWithContentsOfURL: url
//                        encoding: NSUTF8StringEncoding
//                        error: &error
//                        ];
//    
//	if (theString == nil) {
//		theString = [error localizedDescription];
//	}
    
//    NSString *theString = [NSString stringWithFormat:
//                        @"drawRect: self.bounds.origin == (%g, %g), self.bounds.size == %g × %g",
//                        self.bounds.origin.x,
//                        self.bounds.origin.y,
//                        self.bounds.size.width,
//                        self.bounds.size.height];
    
//    NSString *theString = [self description];
    
    CGSize size = [self.theString sizeWithFont: font];
    
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0, .5, 1.0, 1.0);
    
    point = CGPointMake(-size.width / 2, -size.height / 2);
    [self.theString drawAtPoint:point withFont:font];
    
    // Draw foreign character set
    NSString *lineTwo = @"ნღძႳႢ!";
    CGSize sizeTwo = [lineTwo sizeWithFont:font];
    CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(), 0.1, 0.1, 1.0, 1.0);
	CGPoint pointTwo = CGPointMake(-sizeTwo.width / 2, (-sizeTwo.height / 2) + 100);
    [lineTwo drawAtPoint:pointTwo withFont:font];
    
    NSLog(@"drawRect: self.bounds.origin == (%g, %g), self.bounds.size == %g × %g",
          self.bounds.origin.x,
          self.bounds.origin.y,
          self.bounds.size.width,
          self.bounds.size.height);
    
    
    // Drawing a bezier path
    UIBezierPath *aPath = [UIBezierPath bezierPathWithRect:CGRectMake(-50.0, -200.0, 100.0, 80.0)];
    
    [[UIColor blackColor] setStroke];
    [[UIColor redColor] setFill];
    
    // Adjust the drawing options as needed.
    aPath.lineWidth = 1;

    // Fill the path before stroking it so that the fill
    // color does not obscure the stroked line.
    [aPath fill];
    [aPath stroke];
}

-(NSString *)description {
     NSString *string = [NSString stringWithFormat:
                               @"drawRect: self.bounds.origin == (%g, %g), self.bounds.size == %g × %g",
                               self.bounds.origin.x,
                               self.bounds.origin.y,
                               self.bounds.size.width,
                               self.bounds.size.height];
    return string;
}




@end
