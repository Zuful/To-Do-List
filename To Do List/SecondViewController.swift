//
//  SecondViewController.swift
//  To Do List
//
//  Created by Yam's Adams on 11/11/2015.
//  Copyright © 2015 Yatechs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        toDoList.append(item.text!)
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
        item.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!)->Bool{
        item.resignFirstResponder()
        
        return true
    }

}

