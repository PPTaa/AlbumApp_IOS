//
//  ViewController.swift
//  AlbumApp
//
//  Created by leejungchul on 2021/01/05.
//

import UIKit

class ViewController: UIViewController {
    
    var randPrice = 0
    // 금액 text
    @IBOutlet weak var priceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        refreshNum()
    }
    
    @IBAction func randomPriceGenerator(_ sender: Any) {
        let message = "가격은 \(randPrice)원 입니다"
        let alert = UIAlertController(title: "Random Number", message: message, preferredStyle: .alert)
        // handler 에 들어간 부분이 closer : 실행가능 한 코드블럭
        // alertOK가 눌리면 handler의 코드를 실행해라.
        let alertOK = UIAlertAction(title: "Good", style: .default, handler: { action in
            self.refreshNum()
        })
        
        alert.addAction(alertOK)
        present(alert, animated: true, completion: nil)
        
    }
    // 중복 코드 메소드화
    func refreshNum(){
        let randInt = Int.random(in: 10000...100000)
        let randPhoto = Int.random(in: 1...3)
        randPrice = randInt
        priceLabel.text = "금액 : \(randPrice)원"
        myImge.image = UIImage(named: "park\(randPhoto)")
    }
    
    @IBOutlet weak var myImge: UIImageView!
}

