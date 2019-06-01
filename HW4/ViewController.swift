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
    var vegetable = Dictionary<String>
    
    
    
    @IBOutlet weak var vegText: UITextField!
    
    @IBOutlet weak var fruitText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let pickedVege = saveData.string(forKey: "vege") {
            print(pickedVege)
        }
    }
    

    @IBAction func save(_ sender: Any) {
        //let vegeDictionary:String = (vegText.text)!
        //let fruitDictionary:String = fruitText.text
        
        
        saveData.set(vegetable, forKey: "vegetableName")
    }
    
}

