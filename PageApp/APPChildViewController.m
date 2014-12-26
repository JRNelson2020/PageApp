//
//  APPChildViewController.m
//  PageApp
//
//  Created by Rafael Garcia Leiva on 10/06/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "APPChildViewController.h"
#import "AudioController.h"

@interface APPChildViewController ()
{
AVAudioPlayer *_audioPlayer;
AVAudioPlayer *_audioPlayer1;
}
@property (strong, nonatomic) AudioController *audioController;
@property (strong, nonatomic) AVAudioPlayer *backgroundMusicPlayer;

@end

@implementation APPChildViewController
@synthesize webView;
@synthesize dataObject;
@synthesize index;
//@synthesize audioController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
    }
    
    return self;
    
}
- (void)viewWillAppear:(BOOL)animated
{
    
    if (index%3 == 0) {
        NSString *images = [[NSBundle mainBundle]pathForResource:@"animated" ofType:@"gif"];
        NSData *gif=[NSData dataWithContentsOfFile:images];
        webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        [self.view addSubview:webView];
        [webView setScalesPageToFit:NO];
        webView.userInteractionEnabled = NO;
        NSString *path = [NSString stringWithFormat:@"%@/drum01.mp3", [[NSBundle mainBundle] resourcePath]];
        NSURL *soundUrl = [NSURL fileURLWithPath:path];
        // Create audio player object and initialize with URL to sound
        _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
        _audioPlayer.numberOfLoops=-1;
        [_audioPlayer play];
       
        //self.backgroundMusicPlaying = YES;
    }
   if (index%3 == 1)    {
       [_audioPlayer stop];
        NSString *images = [[NSBundle mainBundle]pathForResource:@"lightning" ofType:@"gif"];
        NSData *gif=[NSData dataWithContentsOfFile:images];
        webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
          [self.view addSubview:webView];
        webView.userInteractionEnabled = NO;
       NSString *path = [NSString stringWithFormat:@"%@/pew-pew-lei.caf", [[NSBundle mainBundle] resourcePath]];
       NSURL *soundUrl = [NSURL fileURLWithPath:path];
       // Create audio player object and initialize with URL to sound
       _audioPlayer1 = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
       _audioPlayer1.numberOfLoops=-1;
       [_audioPlayer1 play];
      // [self audioController ];
               }
    
    if (index%3 == 2)    {
        [_audioPlayer1 stop];
        NSString *images = [[NSBundle mainBundle]pathForResource:@"manWalking" ofType:@"gif"];
        NSData *gif=[NSData dataWithContentsOfFile:images];
        webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
        [self.view addSubview:webView];
        webView.userInteractionEnabled = NO;
        NSString *backgroundMusicPath = [[NSBundle mainBundle] pathForResource:@"background-music-aac" ofType:@"caf"];
        NSURL *backgroundMusicURL = [NSURL fileURLWithPath:backgroundMusicPath];
        self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:nil];
        [self.backgroundMusicPlayer play];
    }

    
//  NSMutableArray *imagePaths = [[NSMutableArray alloc] init];
//   // NSMutableArray *images = [[NSMutableArray alloc] init];
//    
//    
//        NSArray *imagesOfParticularType = [[NSBundle mainBundle]pathsForResourcesOfType:@"gif"
//                                                                            inDirectory:nil];
//        //if (imagesOfParticularType)
//            [imagePaths addObjectsFromArray:imagesOfParticularType];
//   // }
//    
//    // load the images array
//    NSString *imagePath;
//    for (imagePath in imagePaths)
//    {
//       // [images addObject:[UIImage imageWithContentsOfFile:imagePath]];
//    
//    
//   // NSString *filePath= [[NSBundle mainBundle] pathForResource:@"animated" ofType:@"gif"];
//    NSData *gif=[NSData dataWithContentsOfFile:imagePath];
//    webView = [[UIWebView alloc] initWithFrame:self.view.frame];
//    [webView loadData:gif MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
//    [self.view addSubview:webView];
//    webView.userInteractionEnabled = NO;
//    }
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
//    imageView.contentMode = UIViewContentModeCenter;
//    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    imageView.image = [UIImage imageNamed:@"animated.gif"];
//    [self.view addSubview:imageView];
    
//NSString *filePath = [[NSBundle mainBundle] pathForResource:@”animated” ofType:@”gif”];
//NSData *gif = [NSData dataWithContentsOfFile:filePath];
//    webView = [[UIWebView alloc] initWithFrame:self.view.frame];
//    [webView loadData:gif MIMEType:@”image/gif” textEncodingName:nil baseURL:nil];
//    webView.userInteractionEnabled = NO;
//    [self.view addSubview:webView];
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"pdf"];
//    NSURL *targetURL = [NSURL fileURLWithPath:path];
//    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
//    [webView loadRequest:request];
//    
//    [self.view addSubview:webView];
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    //self.screenNumber.text = [NSString stringWithFormat:@"Screen #%d", self.index];
//    self.audioController = [[AudioController alloc] init];
//    [self.audioController tryPlayMusic];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
