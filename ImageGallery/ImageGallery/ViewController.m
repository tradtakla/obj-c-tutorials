//
//  ViewController.m
//  ImageGallery
//
//  Created by Karen Najem on 9/14/17.
//  Copyright © 2017 NM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imageInt= 1;
    self.label.text = [NSString stringWithFormat:@"%i/6", imageInt];
    
    [self imageGallery];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)next:(id)sender {
    
    imageInt+= 1;
    self.label.text = [NSString stringWithFormat:@"%i/6", imageInt];
    [self imageGallery];
    
}

- (IBAction)back:(id)sender {
    
    imageInt-= 1;
    self.label.text = [NSString stringWithFormat:@"%i/6", imageInt];
    [self imageGallery];
    
}

-(void)imageGallery{
    
    NSString *image = [NSString stringWithFormat:@"Image%i.jpg", imageInt];
    self.imageView.image = [UIImage imageNamed:image];
    
    
    if (imageInt == 1) {
        self.backButton.enabled = NO;
    }else if (imageInt == 6){
        self.nextButton.enabled = NO;
    }else {
        self.nextButton.enabled = YES;
        self.backButton.enabled = YES;
    }
    
}



@end
