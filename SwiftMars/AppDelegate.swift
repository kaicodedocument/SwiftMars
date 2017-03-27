//
//  AppDelegate.swift
//  SwiftMars
//
//  Created by chenkai on 2017/1/9.
//  Copyright © 2017年 chenkai. All rights reserved.
//

import UIKit
import Moya
import RxSwift
import ObjectMapper
import Moya_ObjectMapper

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
     
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = BaiscViewController()
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //测试Moya 网络访问层
    func testMoyaObjectMapper() {
        //        let provider = MoyaProvider<Github>()
        //        provider.request(.userProfile("codertian")) { result in
        //            switch result{
        //            case .success(_):
        //                print("success")
        //            default:
        //                print("default")
        //            }
        //        }
        
        //        let instgramProvider = MoyaProvider<Instagram>()
        //        instgramProvider.request(.OAuth){ result in
        //            switch result{
        //            case let .success(response):
        //                if let error = try response.mapObject(ErrorInfo){
        //                    print("")
        //                }
        //            case let .failure(error):
        //                print("")
        //            }
        //        }
        
        
        let provider = RxMoyaProvider<NewsService>()
        provider.request(.categroy)
            .mapObject(NewsResult.self)
            .subscribe({ event in
                switch event {
                case .next(let newresult):
                    print("标签总数:\(newresult.data!.data!.count) 第一个标签:\(newresult.data!.data![0].name!)")
                    
                case .error(let error):
                    print(error)
                case .completed:
                    return
                }
            })
    }


}

