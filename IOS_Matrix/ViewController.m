//
//  ViewController.m
//  IOS_Matrix
//
//  Created by Rui Yuan on 1/22/15.
//  Copyright (c) 2015 Rui Yuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *up1;
@property (weak, nonatomic) IBOutlet UITextField *up2;
@property (weak, nonatomic) IBOutlet UITextField *up3;
@property (weak, nonatomic) IBOutlet UITextField *up4;
@property (weak, nonatomic) IBOutlet UITextField *up5;
@property (weak, nonatomic) IBOutlet UITextField *up6;
@property (weak, nonatomic) IBOutlet UITextField *up7;
@property (weak, nonatomic) IBOutlet UITextField *up8;
@property (weak, nonatomic) IBOutlet UITextField *up9;

@property (weak, nonatomic) IBOutlet UITextField *down1;
@property (weak, nonatomic) IBOutlet UITextField *down2;
@property (weak, nonatomic) IBOutlet UITextField *down3;
@property (weak, nonatomic) IBOutlet UITextField *down4;
@property (weak, nonatomic) IBOutlet UITextField *down5;
@property (weak, nonatomic) IBOutlet UITextField *down6;
@property (weak, nonatomic) IBOutlet UITextField *down7;
@property (weak, nonatomic) IBOutlet UITextField *down8;
@property (weak, nonatomic) IBOutlet UITextField *down9;

- (IBAction)inverse:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)divide:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inverse:(id)sender {
    NSNumber *upNum1 = @([self.up1.text doubleValue]);
    NSNumber *upNum2 = @([self.up2.text doubleValue]);
    NSNumber *upNum3 = @([self.up3.text doubleValue]);
    NSNumber *upNum4 = @([self.up4.text doubleValue]);
    NSNumber *upNum5 = @([self.up5.text doubleValue]);
    NSNumber *upNum6 = @([self.up6.text doubleValue]);
    NSNumber *upNum7 = @([self.up7.text doubleValue]);
    NSNumber *upNum8 = @([self.up8.text doubleValue]);
    NSNumber *upNum9 = @([self.up9.text doubleValue]);
    
    NSArray *op1 = [NSArray arrayWithObjects:upNum1,upNum2,upNum3,upNum4,upNum5,upNum6,upNum7,upNum8,upNum9,nil];
    
    Matrix *operator1 =[[Matrix alloc] init];
    
    
    operator1.numbers=op1;
    
    
    
    
    BOOL sign =[operator1 inverse];
    int d=1;
    if(sign)d=3;
    
    if(sign){
        self.down1.text = [operator1.numbers[0] stringValue];
        self.down2.text = [operator1.numbers[1] stringValue];
        self.down3.text = [operator1.numbers[2] stringValue];
        self.down4.text = [operator1.numbers[3] stringValue];
        self.down5.text = [operator1.numbers[4] stringValue];
        self.down6.text = [operator1.numbers[5] stringValue];
        self.down7.text = [operator1.numbers[6] stringValue];
        self.down8.text = [operator1.numbers[7] stringValue];
        self.down9.text = [operator1.numbers[8] stringValue];
        
    }else{
        self.down1.text = @"对";
        self.down2.text = @"不";
        self.down3.text = @"起";
        self.down4.text = @"矩";
        self.down5.text = @"阵";
        self.down6.text = @"的";
        self.down7.text = @"值";
        self.down8.text = @"为";
        self.down9.text = @"0";
    }

}

- (IBAction)add:(id)sender {
    NSNumber *upNum1 = @([self.up1.text doubleValue]);
    NSNumber *upNum2 = @([self.up2.text doubleValue]);
    NSNumber *upNum3 = @([self.up3.text doubleValue]);
    NSNumber *upNum4 = @([self.up4.text doubleValue]);
    NSNumber *upNum5 = @([self.up5.text doubleValue]);
    NSNumber *upNum6 = @([self.up6.text doubleValue]);
    NSNumber *upNum7 = @([self.up7.text doubleValue]);
    NSNumber *upNum8 = @([self.up8.text doubleValue]);
    NSNumber *upNum9 = @([self.up9.text doubleValue]);
    
    NSNumber *downNum1 = @([self.down1.text doubleValue]);
    NSNumber *downNum2 = @([self.down2.text doubleValue]);
    NSNumber *downNum3 = @([self.down3.text doubleValue]);
    NSNumber *downNum4 = @([self.down4.text doubleValue]);
    NSNumber *downNum5 = @([self.down5.text doubleValue]);
    NSNumber *downNum6 = @([self.down6.text doubleValue]);
    NSNumber *downNum7 = @([self.down7.text doubleValue]);
    NSNumber *downNum8 = @([self.down8.text doubleValue]);
    NSNumber *downNum9 = @([self.down9.text doubleValue]);
    
    
    NSArray *op1 = [NSArray arrayWithObjects:upNum1,upNum2,upNum3,upNum4,upNum5,upNum6,upNum7,upNum8,upNum9,nil];
    NSArray *op2 = [NSArray arrayWithObjects:downNum1,downNum2,downNum3,downNum4,downNum5,downNum6,downNum7,downNum8,downNum9,nil];
    
    Matrix *operator1 =[[Matrix alloc] init];
    Matrix *operator2 =[[Matrix alloc] init];
    
    
    operator1.numbers=op1;
    operator2.numbers=op2;
    
    
    [operator1 add:(operator2)];
    
    self.up1.text = nil;
    self.up2.text = nil;
    self.up3.text = nil;
    self.up4.text = nil;
    self.up5.text = nil;
    self.up6.text = nil;
    self.up7.text = nil;
    self.up8.text = nil;
    self.up9.text = nil;
    
    self.down1.text = [operator1.numbers[0] stringValue];
    self.down2.text = [operator1.numbers[1] stringValue];
    self.down3.text = [operator1.numbers[2] stringValue];
    self.down4.text = [operator1.numbers[3] stringValue];
    self.down5.text = [operator1.numbers[4] stringValue];
    self.down6.text = [operator1.numbers[5] stringValue];
    self.down7.text = [operator1.numbers[6] stringValue];
    self.down8.text = [operator1.numbers[7] stringValue];
    self.down9.text = [operator1.numbers[8] stringValue];
    

    
    
}

- (IBAction)minus:(id)sender {
    NSNumber *upNum1 = @([self.up1.text doubleValue]);
    NSNumber *upNum2 = @([self.up2.text doubleValue]);
    NSNumber *upNum3 = @([self.up3.text doubleValue]);
    NSNumber *upNum4 = @([self.up4.text doubleValue]);
    NSNumber *upNum5 = @([self.up5.text doubleValue]);
    NSNumber *upNum6 = @([self.up6.text doubleValue]);
    NSNumber *upNum7 = @([self.up7.text doubleValue]);
    NSNumber *upNum8 = @([self.up8.text doubleValue]);
    NSNumber *upNum9 = @([self.up9.text doubleValue]);
    
    NSNumber *downNum1 = @([self.down1.text doubleValue]);
    NSNumber *downNum2 = @([self.down2.text doubleValue]);
    NSNumber *downNum3 = @([self.down3.text doubleValue]);
    NSNumber *downNum4 = @([self.down4.text doubleValue]);
    NSNumber *downNum5 = @([self.down5.text doubleValue]);
    NSNumber *downNum6 = @([self.down6.text doubleValue]);
    NSNumber *downNum7 = @([self.down7.text doubleValue]);
    NSNumber *downNum8 = @([self.down8.text doubleValue]);
    NSNumber *downNum9 = @([self.down9.text doubleValue]);
    
    
    NSArray *op1 = [NSArray arrayWithObjects:upNum1,upNum2,upNum3,upNum4,upNum5,upNum6,upNum7,upNum8,upNum9,nil];
    NSArray *op2 = [NSArray arrayWithObjects:downNum1,downNum2,downNum3,downNum4,downNum5,downNum6,downNum7,downNum8,downNum9,nil];
    
    Matrix *operator1 =[[Matrix alloc] init];
    Matrix *operator2 =[[Matrix alloc] init];
    
    
    operator1.numbers=op1;
    operator2.numbers=op2;
    
    
    [operator1 minus:(operator2)];
    
    self.up1.text = nil;
    self.up2.text = nil;
    self.up3.text = nil;
    self.up4.text = nil;
    self.up5.text = nil;
    self.up6.text = nil;
    self.up7.text = nil;
    self.up8.text = nil;
    self.up9.text = nil;
    
    self.down1.text = [operator1.numbers[0] stringValue];
    self.down2.text = [operator1.numbers[1] stringValue];
    self.down3.text = [operator1.numbers[2] stringValue];
    self.down4.text = [operator1.numbers[3] stringValue];
    self.down5.text = [operator1.numbers[4] stringValue];
    self.down6.text = [operator1.numbers[5] stringValue];
    self.down7.text = [operator1.numbers[6] stringValue];
    self.down8.text = [operator1.numbers[7] stringValue];
    self.down9.text = [operator1.numbers[8] stringValue];

    
}

- (IBAction)multiply:(id)sender {
}

- (IBAction)divide:(id)sender {
}


-(BOOL)textFieldShouldReturn:(UITextField*)theTextField{
    
        [theTextField resignFirstResponder];
    
    
         return YES;
}

@end
