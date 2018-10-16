//
//  ViewController.h
//  WebViewApplication
//
//  Created by ove on 11/10/18.
//  Copyright © 2018 ove. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UISearchBarDelegate> {
    
    NSTimer *timer;
    
}


@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *actInd;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;




@end

