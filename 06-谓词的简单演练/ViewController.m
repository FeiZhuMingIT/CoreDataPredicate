//
//  ViewController.m
//  06-谓词的简单演练
//
//  Created by Alvechen on 15/11/23.
//  Copyright © 2015年 Alvechen. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    Person *aPerson1 = [Person new];
    aPerson1.name = @"张三";
    aPerson1.age = 18;
    
    Person *aPerson2 = [Person new];
    aPerson2.name = @"李四";
    aPerson2.age = 23;
    
    Person *aPerson3 = [Person new];
    aPerson3.name = @"张五";
    aPerson3.age = 34;
    
    Person *aPerson4 = [Person new];
    aPerson4.name = @"王五";
    aPerson4.age = 30;
    
    Person *aPerson5 = [Person new];
    aPerson5.name = @"刘老二";
    aPerson5.age = 16;
    
    NSArray *persons = @[aPerson1,aPerson2,aPerson3,aPerson4,aPerson5];
    
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self.name == '张'"];
    
    NSArray *result = [persons filteredArrayUsingPredicate:predicate];
    
    for (Person *aPerson in result) {
        
        NSLog(@"%@",aPerson.name);
    }
    
    
    
}


- (void)test1{

    NSArray *phones = @[@"1111222333",@"445567",@"888778666",@"66798797",@"725087"];
    
    //筛选出字符串里包含7的
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"self CONTAINS '1122'"];
    
    NSArray *result = [phones filteredArrayUsingPredicate:predicate];
    
    for (NSString *str in result) {
        
        NSLog(@"%@",str);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
