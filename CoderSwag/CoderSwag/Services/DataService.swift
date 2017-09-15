//
//  DataService.swift
//  CoderSwag
//
//  Created by Jose Melendez on 9/15/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import Foundation

class DataService {
    
    //Singleton
    static let instance = DataService()
    
    //Array filled with data, of type Category
    private let categories = [
        
        Category(title: "Shirts", imageName: "shirts.png"),
        
        Category(title: "Hoodies", imageName: "hoodies.png"),
        
        Category(title: "Hats", imageName: "hats.png"),
        
        Category(title: "Digital", imageName: "digital.png")
        
    ]
    
    func getCategories() -> [Category] {
        
        return categories
    }
}
