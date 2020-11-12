//
//  AppDelegate.h
//  TagetTest
//
//  Created by 陈永叙 on 2020/11/1.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;
@property (strong, nonatomic) UIWindow *window;
- (void)saveContext;

@end

