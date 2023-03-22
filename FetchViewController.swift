//
//  FetchViewController.swift
//  UrlSession
//
//  Created by Rabin on 21/03/23.
//

import UIKit

class FetchViewController: UIViewController {

    @IBOutlet weak var textFetch: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonFetch(_ sender: UIButton) {
        if textFetch.text == UserDefaults.standard.string(forKey: "Save") {
            view.backgroundColor = .green
        }
    }
}
