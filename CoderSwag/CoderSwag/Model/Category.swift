//
//  Category.swift
//  CoderSwag
//
//  Created by Jose Melendez on 9/14/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import Foundation

struct Category {
    

    private(set) public var title: String
    
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        
        self.title = title
        
        self.imageName = imageName
    }
    
}
