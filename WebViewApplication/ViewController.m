//
//  ViewController.m
//  WebViewApplication
//
//  Created by ove on 15/9/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com"]]];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0/2.0 target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
}

-(void)loading {
    
    if (self.webView.loading) {
        
        [self.actInd startAnimating];
        
    } else {
        
        [self.actInd stopAnimating];
        
    }
    
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://%@", self.searchBar.text]]]];
    
    [self resignFirstResponder];
    
}



@end
