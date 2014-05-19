//
//  ViewController.m
//  VantanApp
//
//  Created by AmanoShota on 2014/05/12.
//  Copyright (c) 2014年 ShotaAmano. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *BestLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.BestLabel.text = @"abc";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectBestCouple:(id)sender {
    NSLog(@"called!");
    self.BestLabel.text = @"xyz";
    int n;
    n = arc4random() % 4; //0,1,2,3が入る
    NSString *a, *b;
    
    if (n == 0){
        a = @"A";
        
    }else if (n == 1){
        a = @"B";
    }else if (n == 2){
                a = @"AB";
    }else if (n == 3){
        a = @"O";
    }else{
        NSLog(@"ないよ");
        abort();
    }
    
    
    if (n == 0){
        b = @"A";
        
    }else if (n == 1){
        b = @"B";
    }else if (n == 2){
        b = @"AB";
    }else if (n == 3){
        b = @"O";
    }else{
        NSLog(@"ないよ");
        abort();
    }
    self.BestLabel.text = [NSString stringWithFormat:@"%@型と%@型です",a,b];

}


@end
