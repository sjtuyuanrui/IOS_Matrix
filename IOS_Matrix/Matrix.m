//
//  NSObject+Matrix.m
//  IOS_Matrix
//
//  Created by Rui Yuan on 1/22/15.
//  Copyright (c) 2015 Rui Yuan. All rights reserved.
//

#import "Matrix.h"

@implementation Matrix

@synthesize numbers;

- (id)init
{
    self = [super init];
    if (self) {
        self.numbers=[NSArray arrayWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0, nil];
    }
    return self;
}


-(BOOL) inverse{
    //NSLog(@"xxxxx");
    double val[9];
    double res[9];
    for(int i=0;i<9;i++){
        NSNumber *temp =self.numbers[i];
        val[i] = [temp doubleValue];
        
    }
    double value = val[0]*val[4]*val[8]+val[1]*val[5]*val[6]+val[2]*val[3]*val[7]-val[2]*val[4]*val[6]-val[1]*val[3]*val[8]-val[0]*val[5]*val[7]; //行列式的值
    
    
    
    if(value==0){
        return NO; //没有逆
    }else{
        res[0] = val[4]*val[8]-val[5]*val[7];
        res[1] = val[2]*val[7]-val[1]*val[8];
        res[2] = val[1]*val[5]-val[2]*val[4];
        res[3] = val[5]*val[6]-val[3]*val[8];
        res[4] = val[0]*val[8]-val[2]*val[6];
        res[5] = val[2]*val[3]-val[0]*val[5];
        res[6] = val[3]*val[7]-val[6]*val[4];
        res[7] = val[1]*val[6]-val[0]*val[7];
        res[8] = val[0]*val[4]-val[1]*val[3];
        
        NSArray *tempArray = [NSArray array];
        
        
        for(int j =0 ;j<9;j++){
            NSNumber *temp = [NSNumber numberWithDouble:(res[j]/value)];
            tempArray=[tempArray arrayByAddingObject:temp];
            
        }
        self.numbers = tempArray;
        
        return YES;
    }
    
}


-(void) add:(Matrix*) op2{
    
    double res[9];
    for(int i=0;i<9;i++){
        res[i] = [self.numbers[i] doubleValue]+[op2.numbers[i] doubleValue];

    }
    
    NSArray *tempArray = [NSArray array];
    
    for(int j =0 ;j<9;j++){
        NSNumber *temp = [NSNumber numberWithDouble:res[j]];
        tempArray=[tempArray arrayByAddingObject:temp];
        
    }
    self.numbers = tempArray;


}




@end
