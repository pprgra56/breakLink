//
//  FuckView.m
//  tabcell
//
//  Created by 常琼 on 2016/11/3.
//  Copyright © 2016年 sudiyi. All rights reserved.
//

#import "FuckView.h"

@implementation FuckView


//-(NSArray *)array{
//    if(_array == nil){
//        _array = [NSArray array];
//    }
//    return _array;
//}
- (instancetype)init{
    self = [super init];
    if(self){
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}


- (void)layoutSubviews{
    [super layoutSubviews];

    CGFloat ScreenWidth = self.frame.size.width;//屏幕宽度
    int hang = 1;//行号
    int jianju = 5;//button之间的间距


    for(int i =0;i<self.array.count;i++){

        UIButton *btn = [[UIButton alloc] init];
        btn .backgroundColor= [UIColor redColor];
        [btn setTitle:self.array[i] forState:UIControlStateNormal];



        //点击逻辑
        [btn addTarget:self  action:@selector(didclick:) forControlEvents:UIControlEventTouchUpInside];


        //selected逻辑
        [btn setBackgroundImage:[UIImage imageNamed:@"yellow"] forState:UIControlStateSelected];


        //分行逻辑
        CGFloat width = [NSString stringWithFormat:@"%@", self.array[i]].length *20;
        CGFloat x = self.frame.size.width -ScreenWidth;
        if((x+width) > self.frame.size.width ){
            hang ++;
            ScreenWidth = self.frame.size.width;
             x = self.frame.size.width -ScreenWidth;
        }
        CGFloat y = hang *25;

        CGFloat height = 20;
        ScreenWidth = ScreenWidth - width - jianju - jianju;
        btn.frame = CGRectMake(x, y, width, height);
        btn.tag = i;

        [self addSubview:btn];
    }
}
- (void)didclick:(UIButton *)btn{
    btn .selected = !btn.selected;
    if(btn.selected){

        [self.clickNoSet addObject:[NSNumber numberWithInteger:btn.tag]];
    }else{
        [self.clickNoSet removeObject:[NSNumber numberWithInteger:btn.tag]];
    }
    NSLog(@"\U0001F449 %@ \U0001F448 %s[%d] " ,self.clickNoSet, __PRETTY_FUNCTION__, __LINE__);
}

#pragma mark setter
-(NSMutableSet *)clickNoSet{
    if( _clickNoSet == nil){
        _clickNoSet = [NSMutableSet set];
    }
    return _clickNoSet;
}








-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
    NSLog(@"\U0001F449 %@ \U0001F448 %s[%d] " ,self.array[1], __PRETTY_FUNCTION__, __LINE__);

    }
    return self;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    NSLog(@"\U0001F449 %@ \U0001F448 %s[%d] " ,self.array[1], __PRETTY_FUNCTION__, __LINE__);
}


- (void)setupButtons{

}


@end
