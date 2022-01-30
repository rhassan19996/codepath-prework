//
//  ViewController.swift
//  preWork
//
//  Created by Md Hashif on 1/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var splitBillTotal: UILabel!
    @IBOutlet weak var splitBill: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func calculateTip(sender:Any){
        
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 2.0]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
      func buttonPressed(sender: UIButton){
            let totalBillAmount = total / 2
          splitBillTotal.text = String(format: "$%.2f", totalBillAmount)
        }
    }

}

