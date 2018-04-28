//
//  expenseViewController.swift
//  Core Data
//
//  Created by Sheyla Fuentes on 4/27/18.
//  Copyright © 2018 Sheyla Fuentes. All rights reserved.
//

import UIKit

class expenseViewController: UIViewController {
    @IBOutlet weak var expenseTableView: UIView!
    
    let dateFormatter = DateFormatter()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.timeStyle = .long
        dateFormatter.dateStyle = .long

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool){
    guard let appDelegate + UIApplicacation.shared.delegate as? AppSelegate else{
    return
    }
    
    let managedcontext = appDelegate,pesistentContainer.viewContext
    let fetchRequest: NSFetchRequest<Expense> = Expense.fetchRequest()
        do{
        
        expense = try managedContext.fetch(fetchRequest
            expenseTableView.reloadDAta()
            cathc {
            print("Fech could not be performed")
            }
    }
   
override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
}

}
