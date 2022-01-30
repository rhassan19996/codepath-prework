//
//  ViewController.swift
//  preWork
//
//  Created by Md Hassan on 1/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitBillTotal: UILabel!
    @IBOutlet weak var splitBill: UIButton!
    
    
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        self.title = "Tip Calculator"
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    @IBAction func calculateTip(sender:Any){
        
        //get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0

        
        //get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
      
   
    }
    @IBAction func splitBillPressed(sender:UIButton){
        let bill = Double(billAmountTextField.text!) ?? 0

        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let totalBillAmount = total / 2
          splitBillTotal.text = String(format: "$%.2f", totalBillAmount)
        }
}

