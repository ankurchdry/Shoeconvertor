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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = manShoeSizeTextField.text
        let numerFromTextField = sizeFromTextField.toInt()
        
        var intergerFromTextField = numerFromTextField!
        
        let conversionConstant = 30
        
        intergerFromTextField += conversionConstant
        
        mensConvertedToSize.hidden = false
        
        let stringWithUpdatedToSize = "\(intergerFromTextField)"
        
        mensConvertedToSize.text = stringWithUpdatedToSize

        manShoeSizeTextField.resignFirstResponder()
    }

}

