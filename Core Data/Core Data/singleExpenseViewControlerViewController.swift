//
//  singleExpenseViewControlerViewController.swift
//  Core Data
//
//  Created by Sheyla Fuentes on 4/27/18.
//  Copyright © 2018 Sheyla Fuentes. All rights reserved.
//

import UIKit

class singleExpenseViewControlerViewController: UIViewController {

    
    @IBOutlet weak var nameTxtField: UITextField!
    
    @IBOutlet weak var amountTxtField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTxtField.delegate = self as? UITextFieldDelegate
        amountTxtField.delegate = (self as! UITextFieldDelegate)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){

        nameTxtField.resignFirstResponder()
        amountTxtField.resignFirstResponder()
    }
    @IBAction func saveExpense(_sender: Any){
        let name = nameTxtField.text
        let amountText = amountTxtField.text ?? ""
        let amount = Double(amountText) ?? 0.0
        let date =  datePicker.date
        
  
        if let expense = Expense(name: name!, amount: amount, date: date){
        do {
            let managedContext = expense.managedObjectContext
            
            try managedContext?.save()
            
            self.navigationController?.popViewController(animated: true)
        }
        catch{
            print("context could no be saved")
        }
    }
}
        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
