//
//  AppleProductsTableViewController.swift
//  Pretty Apple
//
//  Created by Duc Tran on 3/28/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class AppleProductsTableViewController: UITableViewController {
    
    // MARK: - VC Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
        
        // Make the row height dynamic
        tableView.estimatedRowHeight = tableView.rowHeight
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    

    // MARK: - Data Source
    
    lazy var productLines: [ProductLine] = {
        return ProductLine.productLines()
    }()
 
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let productLine = productLines[section]
        return productLine.name
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return productLines.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let productLine = productLines[section]
        return productLine.products.count   // the number of products in the section
    }

    // indexPath: which section and which row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Product Cell", for: indexPath) as! ProductTableViewCell

        let productLine = productLines[indexPath.section]
        let product = productLine.products[indexPath.row]
        
        cell.configureCellWith(product)
        
        return cell
    }
    
    // MARK: - Edit Tableview
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            let productLine = productLines[indexPath.section]
            productLine.products.remove(at: indexPath.row)
            // tell the table view to update with new data source
//            tableView.reloadData()    Bad way!
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    
    // performSegueWithIdentifier(identifier: "", sender: AnyObject?)
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            switch identifier {
                case "Show Detail":
                    let productDetailVC = segue.destination as! ProductDetailViewController
                    if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
                        productDetailVC.product = productAtIndexPath(indexPath)
                    }
                case "Show Edit":
                    let editTableVC = segue.destination as! EditTableViewController
                    if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
                        editTableVC.product = productAtIndexPath(indexPath)
                    }
                
                default: break
            }
        }
    }
    
    // MARK: - Helper Method
    
    func productAtIndexPath(_ indexPath: IndexPath) -> Product
    {
        let productLine = productLines[indexPath.section]
        return productLine.products[indexPath.row]
    }
    
}







































