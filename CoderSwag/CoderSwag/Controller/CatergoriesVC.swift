//
//  ViewController.swift
//  CoderSwag
//
//  Created by Jose Melendez on 9/12/17.
//  Copyright © 2017 JoseMelendez. All rights reserved.
//

import UIKit

//Add the two protocols
class CatergoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate{

    
    //Connect the table view
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryTable.dataSource = self
        
        categoryTable.delegate = self
        
    }
    
    //1 of 2 functions that a tableView requires
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    //2 of 2 functions that a tableView requires
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryTableViewCell {
        
        let category = DataService.instance.getCategories()[indexPath.row]
        
        cell.updateViews(category: category)
            
        return cell
            
        } else {

            return CategoryTableViewCell()
        
        }
        
    }

}

