import UIKit

enum Log {
    case line(_: String)
    case rect(_: CGRect)
    case url(_: String)
    case error(_: NSError)
    case date(_: NSDate)
    case any(_: AnyObject)
}

postfix operator / { }

postfix func / (target: Log?) {
    guard let target = target else { return }
    
    func log<T>(emoji: String, _ object: T) {
        print(emoji + " " + String(object))
    }
    
    switch target {
    case .line(let line):
        log("✏️", line)
    case .rect(let rect):
        log("⬜️", rect)
    case .url(let url):
        log("🌏", url)
    case .error(let error):
        log("❗️", error)
    case .any(let any):
        log("🔹", any)
    case .date(let date):
        log("🕒", date)
    }
}

let string = "Hello, world!"
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let url = "http://www.andyyhope.com"
let date = NSDate()
let any = ["Key": 2]

Log.line("Pretty")/
Log.rect(rect)/
Log.url(url)/
Log.any(date)/

Log.any(UIColor.redColor())/


































