//
//  AppDelegate.m
//  Intuit_St2
//
//  Created by Leonid Stepanov on 12/12/2019.
//  Copyright © 2019 Leonid Stepanov. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Строки
    NSString *a = @"abc";
    NSString *b = [a stringByReplacingOccurrencesOfString:@"a"
                                               withString:@"b"];
                   NSLog(@"b: %@", b); // b: bbc
    
                   NSMutableString *m = [b mutableCopy];
                   NSRange r;
                   r.length = m.length;
                   r.location = 0;
                   [m replaceOccurrencesOfString:@"c"
                                      withString:@"b"
                                         options:0
                                           range:r];
                    NSLog(@"m: %@", m); // m: bbb
    
    // Создание объекта строка - Hello, world!
    NSString *test = @"Hello, world!";
    NSLog(@"%@", test);
    
    // Создание массива объектов
    NSArray *arr = @[@"a", @"b", @"c"];
    for (NSString *str in arr)
    {
        NSLog(@"%@", str);
    }
    
    // Создание словаря объектов по "ключь : значение"
    // и вывод на печать:  key2 - b,  key1 - a
    NSDictionary *dict = @{ @"key1" : @"a", @"key2" : @"b" };
    for (NSString *key in dict)
    {
        NSString *value = dict[key];
        NSLog(@"%@ - %@", key, value);
    }
    
    // Структуры
    CGPoint p;
    p.x = 10;
    p.y = 20;
    p = CGPointMake(10, 20);
    
    CGSize s;
    s.width = 100;
    s.height = 100;
    s = CGSizeMake(100, 100);
    
    CGRect u;
    u.size = s;
    u.origin = p;
    u = CGRectMake(10, 20, 100, 100);
    
    // Структуры
    typedef struct
    {
        float x;
        float y;
    } Location;
    
    /*
    Location createLocation(float x, float y)
    {
        Location l;
        l.x = x;
        l.y = y;
        return l;
    }
    
    int main() {
        Location l = createLocation(1.5, 0.5);
        printf("location: {%g, %g}", l.x, l.y);
    }
    */
    
    // Перечисления
    typedef enum
    {
        UIViewAnimationCurveEaseInOut,
        UIViewAnimationCurveEaseIn,
        UIViewAnimationCurveEaseOut,
        UIViewAnimationCurveLinear
    } UIViewAnimationCurve;
    
    UIViewAnimationCurve t = UIViewAnimationCurveLinear;
    printf("%d", t);
    
    
    // Выделение памяти (alloc) и инициализация (init)  класса User
    User *q = [[User alloc] init];
    
    // Вывод в консоль user: <User: 0x7a74bef0>
    NSLog(@"user: %@", q);
    
    // Override point for customization after application launch.
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
