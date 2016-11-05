//
//  ViewController.m
//  tabcell
//
//  Created by 常琼 on 2016/11/3.
//  Copyright © 2016年 sudiyi. All rights reserved.
//

#import "ViewController.h"
#import "SHTableViewCell.h"
#import "FuckView.h"

@interface ViewController ()
@property(strong,nonatomic) NSArray *array;
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet FuckView *fview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"阿斯蒂芬",@"阿斯顿发生",@"爱上对方",@"地方",@"飞飞发热发",@"按时发个人",@"阿斯顿法国",@"爱十分尴尬啊啊是个",@"阿斯蒂芬",@"电放费",@"阿打发多少"];



    self.fview.array = [NSArray arrayWithArray:self.array];
    self.fview.name = @"changq";


}
-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
   // self.fview.array = @[@"11",@"22"];

}
- (IBAction)click:(id)sender {
    UIButton *btn = sender;
    btn .selected = !btn.selected;


}

#pragma mark - delegate&datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SHTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//    cell.namelbl .contentInset = UIEdgeInsetsMake(0.0f, -10.0f, 0.0f, 0.0f);
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
#pragma mark - getter&setter
-(NSArray *)array{
    if(_array == nil){
        _array = [NSArray array];
    }
    return _array;
}

@end
