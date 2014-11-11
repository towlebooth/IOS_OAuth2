import UIKit
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely()

// replace with your access token from https://developers.google.com/oauthplayground/
let token = "ya29.ugBEHA3Z7ZMl_Lj9tVRyr2M2iKE8chR6y5Bpi2Dbi6PGKKErmG--Ce83OcaL8NmCAF_SOXrwrwA4vQ"

// replace if you are not running at the local default location
let apiUrl = "http://127.0.0.1:3000/users/me?access_token="

let url = NSURL(string: "\(apiUrl)\(token)")

let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
    println(NSString(data: data, encoding: NSUTF8StringEncoding))
}

task.resume()
