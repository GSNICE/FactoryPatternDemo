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

#import "Staff.h"
#import "Department.h"
#import "SqlServerFactory.h"
#import "AccessFactory.h"

#import "DBFactory.h"

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
    
    //  抽象工厂模式
    [self abstractFactoryTest];
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

#pragma mark - 抽象工厂模式
- (void)abstractFactoryTest{
    //=============== 基础版本（Basic version） ===============
    NSLog(@"=============== 基础版本（Basic version） ===============");
    Staff *staff = [[Staff alloc] init];
    staff.staffName = @"Gavin";
    Department *department = [[Department alloc] init];
    department.departmentName = @"研发";
    
    //  SQLServer
    NSLog(@"--------------- SQLServer ---------------");
    SQLServerFactory *sqlServerFactory = [[SQLServerFactory alloc] init];
    [[sqlServerFactory createStaffDB] insertStaff:staff];
    [[sqlServerFactory createDepartmentDB] insertDepartment:department];
    
    //  Access
    NSLog(@"--------------- Access ---------------");
    AccessFactory *accessFactory = [[AccessFactory alloc] init];
    [[accessFactory createStaffDB] insertStaff:staff];
    [[accessFactory createDepartmentDB] insertDepartment:department];
    
    //=============== 优化版本（Optimized version） ===============
    NSLog(@"=============== 优化版本（Optimized version） ===============");
    
    //  SQLServer
    NSLog(@"--------------- SQLServer ---------------");
    [[DBFactory createStaffDBWithDBType:DBTypeSQLServer] insertStaff:staff];
    [[DBFactory createDepartmentDBWithDBType:DBTypeSQLServer] insertDepartment:department];
    
    //  Access
    NSLog(@"--------------- Access ---------------");
    [[DBFactory createStaffDBWithDBType:DBTypeAccess] insertStaff:staff];
    [[DBFactory createDepartmentDBWithDBType:DBTypeAccess] insertDepartment:department];
}

@end
