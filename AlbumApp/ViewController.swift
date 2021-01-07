//
//  ViewController.swift
//  AlbumApp
//
//  Created by leejungchul on 2021/01/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func randomNumberGenerator(_ sender: Any) {
        let randint = Int.random(in: 1...10)
        print(randint)
        
        let alert = UIAlertController(title: "Random Number", message: "Random Number is "+String(randint), preferredStyle: .alert)
        let alertOK = UIAlertAction(title: "Good", style: .default, handler: nil)
        
        alert.addAction(alertOK)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    // test
    
}

