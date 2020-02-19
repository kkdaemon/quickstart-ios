//
//  Copyright (c) 2018 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "AppDelegate.h"

@import Firebase;
@import Crashlytics;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

  // Initialize Firebase service.
  [CrashlyticsKit setDebugMode:YES];
  [FIRApp configure];
  return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    CLSNSLog(@"applicationDidBecomeActive");
    [CrashlyticsKit setBoolValue:NO forKey:@"app-suspended"];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    CLSNSLog(@"applicationDidEnterBackground");
    [CrashlyticsKit setBoolValue:YES forKey:@"app-suspended"];
}

@end
