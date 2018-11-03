//
//  ViewController.swift
//  URLRequest
//
//  Created by Azizur Rahman on 2018-04-02.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // We'll need a completion block that returns an error if we run into any problems
    func submitPost(user: LoginUser, completion:((Error?) -> Void)?) {
        var urlComponents = URLComponents()
        urlComponents.scheme = "http"
        urlComponents.host = "192.168.0.19:8080"
        urlComponents.path = "/signup"
        guard let url = urlComponents.url else { fatalError("Could not create URL from components") }
        
        // Specify this request as being a POST method
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        // Make sure that we include headers specifying that our request's HTTP body
        // will be JSON encoded
        var headers = request.allHTTPHeaderFields ?? [:]
        headers["Content-Type"] = "application/json"
        request.allHTTPHeaderFields = headers
        
        // Now let's encode out Post struct into JSON data...
        let encoder = JSONEncoder()
        do {
            let jsonData = try encoder.encode(user)
            // ... and set our request's HTTP body
            request.httpBody = jsonData
            print("jsonData: ", String(data: request.httpBody!, encoding: .utf8) ?? "no body data")
        } catch {
            completion?(error)
        }
        
        // Create and run a URLSession data task with our JSON encoded POST request
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        let task = session.dataTask(with: request) { (responseData, response, responseError) in
            guard responseError == nil else {
                completion?(responseError!)
                return
            }
            
            // APIs usually respond with the data you just sent in your POST request
            if let data = responseData, let utf8Representation = String(data: data, encoding: .utf8) {
                print("response: ", utf8Representation)
            } else {
                print("no readable data received in response")
            }
        }
        task.resume()
    }

    func buttonTapped() {
        let newUser = LoginUser( username: "Raiq2", password: "Aariz")
        submitPost(user: newUser) { (error) in
            if let error = error {
                fatalError(error.localizedDescription)
            }
        }
    }
    
    
    @IBAction func getReq(_ sender: Any) {
        guard let url = URL(string : "https://jsonplaceholder.typicode.com/posts") else { return }
        
  
        let urlSession = URLSession.shared
        urlSession.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
                
            }
            
            if let data = data {
                print("Raw data \(data)")
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print("Json Formtterd data: \(json)")
                } catch {
                    print(error)
                    
                }
            }
        }.resume()
        
    }
    
    
    
    
    @IBAction func postReq(_ sender: Any) {
        
//        let newUser = LoginUser( username: "Raiq2", password: "Aariz")
//        submitPost(user: newUser) { (error) in
//            if let error = error {
//                fatalError(error.localizedDescription)
//            }
//        }
//
       // let parameters = ["userId": "11", "id": "101", "title": "Title", "content": "Aariz is learning how to write data into backend server using http post method."]

     //   guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
         let parameters = ["username": "Raiq1", "password": "Aariz1"]
           guard let url = URL(string: "http://192.168.0.19:8080/signup") else { return }
        // Build an http request
        var request = URLRequest(url: url)

        // Add header info to  the http request

        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        guard let requestBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
        request.httpBody = requestBody



        let urlSession = URLSession.shared
        urlSession.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)

            }

            if let data = data {
                print("Raw data \(data)")

                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print("Json Formtterd data: \(json)")
                } catch {
                    print(error)

                }
            }
        }.resume()


    }
    
}
