//
//  ThirdViewController.m
//  SampleUINavigationControllerBack
//
//  Created by  on 11/12/12.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"

@implementation ThirdViewController

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
    self.navigationItem.title = @"ThirdView";
    
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


/* ============================================================================== */
#pragma mark - Button Action
/* ============================================================================== */
// ナビゲーションバーのRightボタンアクション
- (void)navigationRightBtnAction
{
    // ThirdViewControllerへ遷移
    FourthViewController *fourthViewController;
    fourthViewController = [[FourthViewController alloc]
                           initWithNibName:@"FourthViewController"
                           bundle:nil];
    [self.navigationController pushViewController:fourthViewController animated:YES];
}


@end
