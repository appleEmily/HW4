//
//  ViewController.swift
//  HW4
//
//  Created by 野崎絵未里 on 2019/06/01.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let saveData = UserDefaults.standard
    var letSave: [String:String] = [:]
    var getDictionary: [String:String] = [:]
    @IBOutlet weak var vegText: UITextField!
    
    @IBOutlet weak var fruitText: UITextField!
    
    @IBAction func save(_ sender: Any) {
        letSave = ["vegetableName":vegText.text, "fruitName":fruitText.text] as! [String : String]
        saveData.set(letSave, forKey: "take")
//        saveData.set(vegText.text, forKey: "vegetableName")
//        saveData.set(fruitText.text, forKey: "fruitName")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //保存したデータを取り出す
        if saveData.dictionary(forKey: "take") != nil {
            getDictionary = saveData.object(forKey: "take") as! [String : String]
            print(getDictionary)
            vegText.text = getDictionary["vegetableName"]
            fruitText.text = getDictionary["fruitName"]
        }
    }
}

