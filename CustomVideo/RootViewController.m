//
//  RootViewController.m
//  CustomVideo
//
//  Created by qianfeng on 15/10/27.
//  Copyright (c) 2015年 KaiQiangDong. All rights reserved.




//http://video.szzhangchu.com/nanguabingA.mp4

#import "RootViewController.h"
#import "FMGVideoPlayView.h"
#import "FullViewController.h"
#define url @"http://video.szzhangchu.com/nanguabingA.mp4"


@interface RootViewController ()

@property (nonatomic,strong) FMGVideoPlayView *playView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setupVideoPlayView];
    
  
    
}

-(void)setupVideoPlayView{
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp4"];
    self.playView = [FMGVideoPlayView videoPlayView];
    //视频资源路径
    [self.playView setUrlString:path];
    //播放器显示位置（竖屏时）
    self.playView.frame = CGRectMake(0, 100, ScreenWidth , ScreenWidth * 9 / 16);
    //添加到当前控制器的view上
    [self.view addSubview:self.playView];
    
    //指定一个座位播放的控制器
    self.playView.contrainerViewController = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
