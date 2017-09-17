//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Jose Melendez on 9/17/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    private(set) public var products = [Product]()
    
    @IBOutlet weak var productsCollection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.dataSource = self
        
        productsCollection.delegate = self

    }
    
    func initProducts(category: Category) {
        
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return products.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            
            let product = products[indexPath.row]
            
            cell.updateViews(product: product)
            
            return cell
            
        }
            
           return ProductCell()
            
    }


}
