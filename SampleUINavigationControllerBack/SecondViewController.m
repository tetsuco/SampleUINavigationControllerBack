//
//  SecondViewController.m
//  SampleUINavigationControllerBack
//
//  Created by  on 11/12/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

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
    self.navigationItem.title = @"SecondView";
    
    // ナビゲーションバー Rightボタン
    UIBarButtonItem *rightBarItem = [[UIBarButtonItem alloc] initWithTitle:@"次へ" 
                                                                     style:UIBarButtonItemStyleBordered 
                                                                    target:self 
                                                                    action:@selector(navigationRightBtnAction)];
    self.navigationItem.rightBarButtonItem = rightBarItem;
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


// FourthViewからの遷移時に実行
- (void)labelView
{
    // ラベルを表示
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(60, 100, 100, 30);
    label.backgroundColor = [UIColor yellowColor];
    label.text = @"text";
    [self.view addSubview:label];
}


/* ============================================================================== */
#pragma mark - Button Action
/* ============================================================================== */
// ナビゲーションバーのRightボタンアクション
- (void)navigationRightBtnAction
{
    // ThirdViewControllerへ遷移
    ThirdViewController *thirdViewController;
    thirdViewController = [[ThirdViewController alloc]
                           initWithNibName:@"ThirdViewController"
                           bundle:nil];
    [self.navigationController pushViewController:thirdViewController animated:YES];
}


@end
