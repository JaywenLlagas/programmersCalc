//
//  NumberViewController.swift
//  
//
//  Created by Jaywen Lou Tabanag Llagas on 9/16/15.
//
//

import UIKit

class NumberViewController: UIViewController {

    
    @IBOutlet weak var digit: UILabel!
    @IBOutlet weak var input: UITextField!
 
    var choice : String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        digit.text = "Enter \(choice!):"
        // Do any additional setup after loading the view.
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        if let segueIdentifier = segue.identifier {
            if segueIdentifier == "Output" {
                let vc = segue.destinationViewController as! OutputViewController
                vc.baseChoice = choice!
                vc.choiceInput = input.text
                vc.chosenBase = choice!
            }
            
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
