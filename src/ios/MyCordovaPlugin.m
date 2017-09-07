#import "MyCordovaPlugin.h"

#import <Cordova/CDVAvailability.h>

@implementation MyCordovaPlugin

- (void)pluginInitialize {

}

- (void)getJSONPlaceHolderPostTitle:(CDVInvokedUrlCommand *)command {

  NSString *dataUrl = [command.arguments objectAtIndex:0];
  NSURL *url = [NSURL URLWithString: dataUrl];
  NSURLSessionDataTask *downloadTask = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
      
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSString *postTitle = [json objectForKey:@"title"];
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:postTitle];

    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"%@", postTitle);
        [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
    });
  }];
  
  [downloadTask resume];

}

@end