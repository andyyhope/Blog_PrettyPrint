//
//  Log.swift
//  
//
//  Created by Andyy Hope on 14/04/2016.
//  http://www.andyyhope.com
//  @andyyhope


import Foundation

enum log {
    case ln(_: String)
    case url(_: String)
    case error(_: NSError)
    case date(_: NSDate)
    case obj(_: AnyObject)
    case any(_: Any)
}

postfix operator / { }

postfix func / (target: log?) {
    guard let target = target else { return }
    
    func log<T>(emoji: String, _ object: T) {
        print(emoji + " " + String(object))
    }
    
    switch target {
    case .ln(let line):
        log("✏️", line)
        
    case .url(let url):
        log("🌏", url)
        
    case .error(let error):
        log("❗️", error)
        
    case .any(let any):
        log("⚪️", any)
        
    case .obj(let obj):
        log("◽️", obj)
        
    case .date(let date):
        log("🕒", date)
    }
}