//
//  ResetDefaultRateViewController.swift
//  CurrencyConvertor
//
//  Created by MacStudent on 2019-11-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import Foundation
class ResetDefaultRateViewController: UIViewController {
    
    var defRate = ""
    var dvalue = ""
    
    @IBOutlet weak var ChangeRateTextField: UITextField!
    
    
    
    @IBAction func Reset(_ sender: UIButton)
        
    {
        if(ChangeRateTextField.text == ""){
            
            
            
            let alert = UIAlertController(title: "Field is empty",message: "Please enter amount",preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title:"Ok",style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alert,animated: true,completion: nil)
            
            
            
            return
            
        }else{
            
            
            
            dvalue = ChangeRateTextField.text!
            
            print(dvalue)
            
            let a = self.navigationController!.viewControllers[0] as! CurrencyViewController
            
            a.resetdefault = dvalue
            
            self.navigationController!.popToRootViewController(animated: true)
            
        }
        
    }
    
    var itemToEdit: String?
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        if let itemToEdit = itemToEdit {
            
            title = "Edit Item"
            
            ChangeRateTextField.text = itemToEdit
            
            
            
            
            
            
            
        }
        
        
        
    }
    
}

