//
//  ViewController.m
//  ViewMoveUpExample
//
//  Created by Regor on 23/11/16.
//  Copyright © 2016 Regor. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AnimateUp.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tf1;
@property (weak, nonatomic) IBOutlet UITextField *tf2;
@property (weak, nonatomic) IBOutlet UITextField *tf3;
@property (weak, nonatomic) IBOutlet UITextField *tf4;
@property (weak, nonatomic) IBOutlet UIView *viewForT3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
  }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)textFieldDidBeginEditing:(UITextField *)textField {

    CGRect textFieldRectWithRespectToSelfView = [textField.superview convertRect:textField.frame toView:self.view];
    

    [self.view animateUpToTargetYOrigin:textFieldRectWithRespectToSelfView.origin.y + textFieldRectWithRespectToSelfView.size.height];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

@end
