//
//  UserModal.swift
//  Javascript in iOS Sample
//
//  Created by Macbook on 15/02/19.
//  Copyright © 2019 My Macbook. All rights reserved.
//


struct User {
    let name : String
    let firstName: String
    let lastName : String
    
    init(_ decoder: Dictionary<String,Any>) {
        name = decoder["name"] as? String ?? ""
        firstName = decoder["firstName"] as? String ?? ""
        lastName = decoder["lastName"] as? String ?? ""
    }
    
    init() {
        name = ""
        firstName = ""
        lastName = ""
    }
}
