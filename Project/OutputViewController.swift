//
//  OutputViewController.swift
//  Project
//
//  Created by Jaywen Lou Tabanag Llagas on 9/18/15.
//  Copyright (c) 2015 Jaywen Lou Tabanag Llagas. All rights reserved.
//

import UIKit

class OutputViewController: UIViewController {

    @IBOutlet weak var base: UILabel!
    @IBOutlet weak var input: UILabel!
    @IBOutlet weak var firstBase: UILabel!
    @IBOutlet weak var secondBase: UILabel!
    @IBOutlet weak var thirdBase: UILabel!
    
    var chosenBase : String?
    var baseChoice : String?
    var choiceInput : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        base.text = baseChoice!
        input.text = choiceInput!
        arrange()
        println("ehe")
        
        if let chosenInput = input.text?.toInt() {
            print(chosenInput+chosenInput)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func arrange() {
        if chosenBase == "Binary" {
            firstBase.text = "Octal"
            secondBase.text = "Decimal"
            thirdBase.text = "Hexadecimal"
        } else if chosenBase == "Octal" {
            firstBase.text = "Binary"
            secondBase.text = "Decimal"
            thirdBase.text = "Hexadecimal"
        } else if chosenBase == "Decimal" {
            firstBase.text = "Binary"
            secondBase.text = "Octal"
            thirdBase.text = "Hexadecimal"
        } else {
            firstBase.text = "Binary"
            secondBase.text = "Octal"
            thirdBase.text = "Decimal"
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
