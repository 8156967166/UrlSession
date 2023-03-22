//
//  ViewController.swift
//  UrlSession
//
//  Created by Rabin on 21/03/23.
//

import UIKit

class UrlViewController: UIViewController {

    let url = "https://jsonplaceholder.typicode.com/todos/1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }

    func getData() {
        guard let api = URL(string: url) else {
            return
        }
        let request = URLRequest(url: api)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data)
                    print(json)
                    if let myResponse = json as? [String:Any] {
                        print(myResponse["title"] ?? "")
                    }
                    
                }catch {
                    print("Error")
                }
            }
        }
        task.resume()
        
    }
}
