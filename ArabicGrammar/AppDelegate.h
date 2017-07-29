//
//  AppDelegate.h
//  ArabicGrammar
//
//  Created by Sow Moussa on 2017/07/29.
//  Copyright © 2017 Sow Moussa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

