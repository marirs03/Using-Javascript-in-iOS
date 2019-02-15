//
//  ViewController.swift
//  Javascript in iOS Sample
//
//  Created by Macbook on 15/02/19.
//  Copyright © 2019 My Macbook. All rights reserved.
//

import UIKit
import JavaScriptCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appendedString = appendStrings(a: "Hello", b: "User")
        print("appendedString ",appendedString)
        
        let numberArray = [1,2,3,4,5]
        let sumOfArray = sumOfNumbers(inputArray: numberArray)
        print("sumOfArray ",sumOfArray)
        
        let inputUser = ["firstName" : "User",
                         "lastName" : "Name"] as Dictionary<String,Any>
        let user = playWithDictionary(inputObject: inputUser)
        print("user Result",user)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Create a function to call javascript append String method
    func appendStrings(a:String,b:String) -> String
    {
        let JavaScriptContext = (UIApplication.shared.delegate as! AppDelegate).javaScriptContext
        
        //prepare javascript function using objectForKeyedSubscript
        let addTwoNumbersFunc = JavaScriptContext?.objectForKeyedSubscript("appendStrings")
        
        //Call javascript function using call methods and pass arguments required
        let result = addTwoNumbersFunc?.call(withArguments: [a,b])
        
        //Convert the JSValue returned by Javascript to Native object
        let obj = result?.toString()
        if obj == nil{
            print("error")
            return ""
        }
        return obj!
    }
    
    func sumOfNumbers(inputArray:[Int]) -> Int32
    {
        let JavaScriptContext = (UIApplication.shared.delegate as! AppDelegate).javaScriptContext
        let addTwoNumbersFunc = JavaScriptContext?.objectForKeyedSubscript("sumOfNNumbers")
        let result = addTwoNumbersFunc?.call(withArguments: [inputArray])
        let obj = result?.toInt32()
        if obj == nil{
            print("error")
            return 0
        }
        return obj!
    }
    
    //Function to call Javascript method and convert JSValue to native Objects
    func playWithDictionary(inputObject:Dictionary<String,Any>) -> User
    {
        let JavaScriptContext = (UIApplication.shared.delegate as! AppDelegate).javaScriptContext
        let addTwoNumbersFunc = JavaScriptContext?.objectForKeyedSubscript("playWithDictionary")
        let result = addTwoNumbersFunc?.call(withArguments: [inputObject])
        let obj = result?.toObject()
        if obj == nil{
            print("error")
            return User()
        }
        let userObject = User(obj as! Dictionary<String,Any>)
        return userObject
    }
}
