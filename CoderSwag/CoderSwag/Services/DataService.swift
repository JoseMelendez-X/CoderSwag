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
    
    //Products of hats
    private let hats = [
        
        Product(title: "Devslopes logo graphic beani", price: "18.0", imageName: "hat01.png"),
        
        Product(title: "Devslopes logo hat black", price: "$22.00", imageName: "hat02.png"),
        
        Product(title: "Devslopes log0 hat white", price: "$22.00", imageName: "hat03.png"),
        
        Product(title: "Devslopes logo SnapBack", price: "$20.00`", imageName: "hat04.png")
    ]
    
    //Product of hoodies
    private let Hoodies = [
        
        Product(title: "Devslopes logo hoodie grey", price: "32", imageName: "hoodie01.png"),
        
        Product(title: "Devslopes logo hoodie red", price: "32", imageName: "hoodie02.png"),
        
        Product(title: "Devslopes hoodie grey", price: "32", imageName: "hoodie03.png"),
        
        Product(title: "Devslopes hoodie black", price: "32", imageName: "hoodie04.png"),
    ]
    
    //Product of shirts
    private let shirts = [
        
         Product(title: "Devslopes logo shirt black", price: "$18", imageName: "shirt01.png"),
        
         Product(title: "Devslopes Badge shirt light grey", price: "$19", imageName: "shirt02.png"),
        
         Product(title: "Devslopes logo shirt red", price: "$18", imageName: "shirt03.png"),
        
         Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        
         Product(title: "Kickflip studios black", price: "$18", imageName: "shirt05.png")
    
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        
        return categories
    }
    
    func getProducts(forCategoryTitle title: String ) -> [Product] {
        
        switch title {
        case "Shirts":
        return getShirts()
            
       
        case "Hats":
        return getHats()
                
        
        case "Hoodies":
        return getHoodies()
                    
        
        case "Digital":
        return getDigital()
                        
            
        default:
        return getShirts()
            
        }
    }

    func getHats() -> [Product]{
        
        return hats
        
    }
    
    func getHoodies() -> [Product]{
        
        return Hoodies
        
    }
    
    func getShirts() -> [Product]{
        
        return shirts
        
    }
    
    func getDigital() -> [Product] {
        
        return digitalGoods
        
    }
}
