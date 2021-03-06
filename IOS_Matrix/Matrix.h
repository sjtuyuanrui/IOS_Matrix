//
//  NSObject+Matrix.h
//  IOS_Matrix
//
//  Created by Rui Yuan on 1/22/15.
//  Copyright (c) 2015 Rui Yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Matrix:NSObject

@property (nonatomic) NSArray *numbers;

-(BOOL) inverse;

-(void) add:(Matrix*) op2;
-(void) minus:(Matrix*) op2;
-(void) multiply:(Matrix*) op2;
-(BOOL) divide:(Matrix*) op2;

@end

