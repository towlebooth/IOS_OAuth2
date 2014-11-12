import UIKit
import XCPlayground
import Alamofire

XCPSetExecutionShouldContinueIndefinitely()

// replace with your access token from https://developers.google.com/oauthplayground/
let token = "==YourAccessTokenHere=="

// replace if you are not running at the local default location
let apiUrl = "http://127.0.0.1:3000/users/me?access_token="

let url = NSURL(string: "\(apiUrl)\(token)")

let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
    println(NSString(data: data, encoding: NSUTF8StringEncoding))
}

task.resume()


// Try using Alamofire
import Alamofire

let completeUrl = apiUrl + token

Alamofire.request(.GET, completeUrl)
    .responseJSON { (_, _, JSON, _) in
        println(JSON)
}
