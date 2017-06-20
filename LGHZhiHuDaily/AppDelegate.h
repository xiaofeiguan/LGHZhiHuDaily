//
//  AppDelegate.h
//  LGHZhiHuDaily
//
//  Created by 刘观华 on 17/6/17.
//  Copyright © 2017年 SmoothV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

