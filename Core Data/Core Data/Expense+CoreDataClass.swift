//
//  Expense+CoreDataClass.swift
//  Core Data
//
//  Created by Sheyla Fuentes on 4/27/18.
//  Copyright © 2018 Sheyla Fuentes. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Expense)
public class Expense: NSManagedObject {
    var date:  Date?{
        get {
            return rawDate as Date?
        }
        set {
       rawDate =  newValue as NSDate?
    }
}
    convenience init?(name: String, amount: Double, date: Date?){
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedConext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        self.init(entity: Expense.entity(), inserInto: managedConext)
        self.name =  name
        self.amount = amount
        self.date = date
    }
}
