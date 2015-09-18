//
//  ViewController.swift
//  Project
//
//  Created by Jaywen Lou Tabanag Llagas on 9/11/15.
//  Copyright (c) 2015 Jaywen Lou Tabanag Llagas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if let segueIdentifier = segue.identifier {
            if segueIdentifier == "Binary" {
                let vc = segue.destinationViewController as! NumberViewController
                vc.choice = segueIdentifier
            } else if segueIdentifier == "Octal" {
                let vc = segue.destinationViewController as! NumberViewController
                vc.choice = segueIdentifier
            } else if segueIdentifier == "Decimal" {
                let vc = segue.destinationViewController as! NumberViewController
                vc.choice = segueIdentifier
            } else if segueIdentifier == "Hexadecimal" {
                let vc = segue.destinationViewController as! NumberViewController
                vc.choice = segueIdentifier
            }
            
        }
    }
}


