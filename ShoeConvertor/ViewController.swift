//
//  ViewController.swift
//  ShoeConvertor
//
//  Created by ankurchdry on 9/16/14.
//  Copyright (c) 2014 ankurchdry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var manShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedToSize: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedToSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = manShoeSizeTextField.text.toInt()!
    // Refactoring on 21-Sep-2014 let numerFromTextField = sizeFromTextField.toInt()
        
    // Refactored on 21-Sep-2014    var intergerFromTextField = numerFromTextField!
        
        let conversionConstant = 30
        
     //   intergerFromTextField += conversionConstant
        
        mensConvertedToSize.hidden = false
        
        let stringWithUpdatedToSize = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        mensConvertedToSize.text = stringWithUpdatedToSize

        manShoeSizeTextField.resignFirstResponder()
    }
    
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)
        
        let conversionConstant = 30.5
        
        womensConvertedToSize.hidden = false
        
        womensConvertedToSize.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
          womensShoeSizeTextField.resignFirstResponder()
        
        
    }
    
    
}

