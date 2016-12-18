//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by inagaki on 2016/08/12.
//  Copyright © 2016年 inagaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let userDefaults = NSUserDefaults.standardUserDefaults()
        if let value = userDefaults.stringForKey("text") {
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapActionButton(sender: AnyObject) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setObject(textField.text, forKey: "text")
        userDefaults.synchronize()
    }

}

