//
//  ViewController.swift
//  CountTest
//
//  Created by 林香穂 on 2020/07/04.
//  Copyright © 2020 Hayashi Pump. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var pumpkinImage: UIImageView!
    
    let saveData: UserDefaults = UserDefaults.standard
    
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        //UserDefaultsから値を取り出す
        if (saveData.object(forKey: "number")) != nil {
            number = saveData.object(forKey: "number") as! Int
            label.text = String(number)
        }
        if (number % 5 == 0) {
            pumpkinImage.image = UIImage(named: "pumpkin2")
        } else {
            pumpkinImage.image = UIImage(named: "pumpkin1")
        }
    }
    
    @IBAction func plus() {
        number = number + 1
        label.text = String(number)
        if (number % 5 == 0) {
            pumpkinImage.image = UIImage(named: "pumpkin2")
        } else {
            pumpkinImage.image = UIImage(named: "pumpkin1")
        }
        //UserDefaultsに値を書き込む
        saveData.set(number, forKey: "number")
    }
}
