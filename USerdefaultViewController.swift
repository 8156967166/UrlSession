//
//  USerdefaultViewController.swift
//  UrlSession
//
//  Created by Rabin on 21/03/23.
//

import UIKit

class USerdefaultViewController: UIViewController {

    @IBOutlet weak var textSave: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonSave(_ sender: UIButton) {
        UserDefaults.standard.set(textSave.text, forKey: "Save")
        let fetchVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FetchViewController") as! FetchViewController
        self.navigationController?.pushViewController(fetchVC, animated: true)
    }
    
//    @IBAction func buttonFetch(_ sender: UIButton) {
//        if UserDefaults.standard.string(forKey: "Save") != "" {
//            view.backgroundColor = .green
//        }
//        if textFetch.text == UserDefaults.standard.string(forKey: "Save"){
//
//        }
//    }
    
}
