//
//  CategoryTableViewCell.swift
//  CoderSwag
//
//  Created by Jose Melendez on 9/13/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!

    //Update the views in the cell
    
    func updateViews(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        
        categoryTitle.text = category.title
        
    }

}
