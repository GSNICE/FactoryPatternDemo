//
//  ViewController.m
//  FactoryPatternDemo
//
//  Created by Gavin on 2020/3/31.
//  Copyright © 2020 GSNICE. All rights reserved.
//

#import "ViewController.h"
#import "Calculate.h"
#import "CalculateFactory.h"

#import "AddFactory.h"
#import "SubFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //  简单工厂模式
    [self simpleFactoryTest];
    
    //  工厂方法模式
    [self factoryMethodTest];
}

#pragma mark - 简单工厂模式
- (void)simpleFactoryTest {
    Calculate *calculate_add = [CalculateFactory createOperateWithStr:@"+"];
    calculate_add.firstNum = 3.0f;
    calculate_add.secondNum = 6.0f;
    NSLog(@"简单工厂模式-求和：%f",[calculate_add getResult]);
    
    Calculate *calculate_sub = [CalculateFactory createOperateWithStr:@"-"];
    calculate_sub.firstNum = 9.0f;
    calculate_sub.secondNum = 3.0f;
    NSLog(@"简单工厂模式-求差：%f",[calculate_sub getResult]);
}

#pragma mark - 工厂方法模式
- (void)factoryMethodTest {
    Calculate *calculate_add = [AddFactory createCalculate];
    calculate_add.firstNum = 3.0f;
    calculate_add.secondNum = 6.0f;
    NSLog(@"工厂方法模式-求和：%f",[calculate_add getResult]);
    
    Calculate *calculate_sub = [SubFactory createCalculate];
    calculate_sub.firstNum = 9.0f;
    calculate_sub.secondNum = 3.0f;
    NSLog(@"工厂方法模式-求差：%f",[calculate_sub getResult]);
}

@end
