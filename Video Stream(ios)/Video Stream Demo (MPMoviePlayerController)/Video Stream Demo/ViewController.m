//
//  ViewController.m
//  Video Stream Demo
//
//  Created by Christopher Ching on 2014-05-14.
//  Copyright (c) 2014 CodeWithChris. All rights reserved.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()
{
    // Inline
    MPMoviePlayerController *_player;
    
    // Player in new view
    //MPMoviePlayerViewController *_newViewPlayer;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playClicked:(id)sender
{
    // Code that executes when user taps Play
    NSURL *videoStreamURL = [NSURL URLWithString:@"http://qthttp.apple.com.edgesuite.net/1010qwoeiuryfg/sl.m3u8"];
    
    // Create movie player object and add it to the view
    _player = [[MPMoviePlayerController alloc] initWithContentURL:videoStreamURL];
    _player.view.frame = CGRectMake(0, 0, self.view.frame.size.width, 320);
    [self.view addSubview:_player.view];
    
    // Play the stream
    [_player play];
    
    // Code for new view player
    /*
     _newViewPlayer = [[MPMoviePlayerViewController alloc] initWithContentURL:videoStreamURL];
     [self presentMoviePlayerViewControllerAnimated:_newViewPlayer];
     */
}

@end
