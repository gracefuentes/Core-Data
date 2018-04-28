//
//  Expense+CoreDataProperties.swift
//  Core Data
//
//  Created by Sheyla Fuentes on 4/27/18.
//  Copyright © 2018 Sheyla Fuentes. All rights reserved.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var amount: Double
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var name: String?

}
