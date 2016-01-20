//
//  ViewController.swift
//  ElloGovna
//
//  Created by Andrew Kozlik on 1/19/16.
//  Copyright © 2016 Andrew Kozlik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField : UITextField?
    @IBOutlet weak var button : UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tappedHelloButton() {
        self.textField?.resignFirstResponder()
        
        if let string = self.textField?.text {
            let message = "'Allo \(string)"
            let alertController = UIAlertController(title: "Hi", message: message, preferredStyle: .Alert)
            
            let actionOK = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                self.textField?.text = ""
            })
            
            alertController.addAction(actionOK)
            
            self.presentViewController(alertController, animated: true, completion: nil)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

