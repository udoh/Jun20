//
//  View.h
//  Jun20
//
//  Created by Udo Hoppenworth on 6/20/13.
//  Copyright (c) 2013 Udo Hoppenworth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface View : UIView {
    NSString *_theString;
    CGPoint point;
    UIFont *font;
}

@property (nonatomic, copy) NSString *theString;

- (id) initWithFrame: (CGRect) frame
              string: (NSString *) s
     backgroundColor: (UIColor *) c
               point: (CGPoint) p
                font: (UIFont *) f;

@end
