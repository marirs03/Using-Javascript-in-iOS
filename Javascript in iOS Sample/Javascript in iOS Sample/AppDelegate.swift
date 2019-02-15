//
//  AppDelegate.swift
//  Javascript in iOS Sample
//
//  Created by Macbook on 15/02/19.
//  Copyright © 2019 My Macbook. All rights reserved.
//

import UIKit
import JavaScriptCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
   
    //Create a Javascript context instance
    var javaScriptContext = JSContext()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Define the source path for your javascript file and the file name goes here
        let javaScriptPath = Bundle.main.path(forResource: "JavaScriptFile", ofType: "js")
        let javaScriptSourceFile: String
        do {
            javaScriptSourceFile = try String(contentsOfFile: javaScriptPath!, encoding: String.Encoding.utf8)
        }
        catch {
            javaScriptSourceFile = ""
        }
        
        
        //Code to print errors in Xcode console
        _ = javaScriptContext?.exceptionHandler = { engineJSContext, exception in
            
            let fullStack = exception?.toString()
            // type of String
            let stacktrace = exception!.objectForKeyedSubscript("stack").toString()
            // type of Number
            let lineNumber = exception!.objectForKeyedSubscript("line")
            // type of Number
            let column = exception!.objectForKeyedSubscript("column")
            let moreInfo = "\(stacktrace!)Line number : \(lineNumber!), column: \(column!)"
            
            print("JS: \(fullStack, moreInfo, exception.debugDescription, exception?.toObject() ?? "unknown error")")
            
        }
        
        _ = javaScriptContext?.evaluateScript(javaScriptSourceFile)
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


}

