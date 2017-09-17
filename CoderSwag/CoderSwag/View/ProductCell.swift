//
//  ProductCell.swift
//  CoderSwag
//
//  Created by Jose Melendez on 9/16/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImage: UIImageView!
    
    @IBOutlet weak var productPrice: UILabel!
    
    @IBOutlet weak var productTitle: UILabel!
    
    func updateViews(product: Product) {
        
        productImage.image = UIImage(named: product.imageName)
        
        productTitle.text = product.title
        
        productPrice.text = product.price
        
        
    }
}
