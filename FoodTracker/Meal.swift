//
//  Meal.swift
//  FoodTracker
//
//  Created by Michael Roy on 1/27/18.
//  Copyright © 2018 Hello World Corporation. All rights reserved.
//

// Foundation is imported with UIKit, so "import Foundation" is not needed here
import UIKit

class Meal {
    
    //MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Failing conditions
        guard !name.isEmpty else {
            return nil
        }
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
