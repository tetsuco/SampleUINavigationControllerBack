//
//  FourthViewController.m
//  SampleUINavigationControllerBack
//
//  Created by  on 11/12/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FourthViewController.h"

@implementation FourthViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // ナビゲーションバーのタイトルを設定
    self.navigationItem.title = @"FourthView";
    
    // ボタン1
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn1.frame = CGRectMake(30, 120, 260, 30);
    btn1.tag = 1;
    [btn1 setTitle:@"SecondViewへ遷移" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(btnAction:)forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    
    // ボタン2
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(30, 180, 260, 30);
    btn2.tag = 2;
    [btn2 setTitle:@"SecondViewへ遷移してメソッド実行" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(btnAction:)forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn2];
    
    // ボタン3
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn3.frame = CGRectMake(30, 240, 260, 30);
    btn3.tag = 3;
    [btn3 setTitle:@"rootViewへ遷移" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(btnAction:)forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn3];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


/* ============================================================================== */
#pragma mark - Button Action
/* ============================================================================== */
- (void)btnAction:(UIButton*)sender
{
    if (sender.tag == 1) {
        // SecondViewControllerへ戻る
        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:1] animated:YES];
    }
    else if (sender.tag == 2) {
        // SecondViewControllerへ戻ってメソッドを実行
        SecondViewController *secondViewController = [self.navigationController.viewControllers objectAtIndex:1];
        [secondViewController labelView];
        [self.navigationController popToViewController:secondViewController animated:YES];
    }
    else
    {
        // 一番初めのViewへ戻る
        [self.navigationController popToRootViewControllerAnimated:YES];
    }
}


@end
