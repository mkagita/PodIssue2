//
//  DetailViewController.h
//  PodIssue
//
//  Created by mkagita on 11/23/15.
//  Copyright © 2015 mkagita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

