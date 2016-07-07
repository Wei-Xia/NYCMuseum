//
//  DetailTableViewController.swift
//  NYCMuseum
//
//  Created by Wei Xia on 6/29/16.
//  Copyright © 2016 Wei Xia. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func close(segue: UIStoryboardSegue){
        if let sourceVC = segue.sourceViewController as? ReviewViewController {
            if let rating = sourceVC.rating{
                self.museum.rating = rating
                self.ratingBtn.setImage(UIImage(named: rating), forState: .Normal)
            }
        }
    }
    
    @IBOutlet weak var ratingBtn: UIButton!
    
    
    var museum: Museum!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: museum.image)
        
        tableView.backgroundColor = UIColor(white: 0.98, alpha: 1)
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.separatorColor = UIColor(white: 0.9, alpha: 1)
        
        title = museum.name
        
        tableView.estimatedRowHeight = 36
        tableView.rowHeight = UITableViewAutomaticDimension
        
//        let leftCons = NSLayoutConstraint(item: imageView, attribute: .Leading, relatedBy: .Equal, toItem: imageView.superview, attribute: .Leading, multiplier: 1, constant: 0)
//        let rightCons = NSLayoutConstraint(item: imageView, attribute: .Trailing, relatedBy: .Equal, toItem: imageView.superview, attribute: .Trailing, multiplier: 1, constant: 0)
//        let topCons = NSLayoutConstraint(item: imageView, attribute: .Top, relatedBy: .Equal, toItem: imageView.superview, attribute: .Top, multiplier: 1, constant: 0)
//        let bottomCons = NSLayoutConstraint(item: imageView, attribute: .Bottom, relatedBy: .Equal, toItem: imageView.superview, attribute: .Bottom, multiplier: 1, constant: 0)
//        
//        leftCons.active = true
//        rightCons.active = true
//        topCons.active = true
//        bottomCons.active = true
    }
    
//    func autolayout() {
//        
//        imageView.image = UIImage(named: museum.image)
//        
//        let leftCons = NSLayoutConstraint(item: imageView, attribute: .Leading, relatedBy: .Equal, toItem: imageView.superview, attribute: .Leading, multiplier: 1, constant: 0)
//        let rightCons = NSLayoutConstraint(item: imageView, attribute: .Trailing, relatedBy: .Equal, toItem: imageView.superview, attribute: .Trailing, multiplier: 1, constant: 0)
//        let topCons = NSLayoutConstraint(item: imageView, attribute: .Top, relatedBy: .Equal, toItem: imageView.superview, attribute: .Top, multiplier: 1, constant: 0)
//        let bottomCons = NSLayoutConstraint(item: imageView, attribute: .Bottom, relatedBy: .Equal, toItem: imageView.superview, attribute: .Bottom, multiplier: 1, constant: 0)
//        
//        leftCons.active = true
//        rightCons.active = true
//        topCons.active = true
//        bottomCons.active = true
//    }
    

    // ToDo: This doesn't work!!!!!!!!!!!!!!
    func autolayoutUsingConstraint() {
        self.imageView.translatesAutoresizingMaskIntoConstraints = false
        
        
        let leftCons = NSLayoutConstraint(item: imageView, attribute: .Leading, relatedBy: .Equal, toItem: imageView.superview, attribute: .Leading, multiplier: 1, constant: 0)
        let rightCons = NSLayoutConstraint(item: imageView, attribute: .Trailing, relatedBy: .Equal, toItem: imageView.superview, attribute: .Trailing, multiplier: 1, constant: 0)
        let topCons = NSLayoutConstraint(item: imageView, attribute: .Top, relatedBy: .Equal, toItem: imageView.superview, attribute: .Top, multiplier: 1, constant: 0)
        let bottomCons = NSLayoutConstraint(item: imageView, attribute: .Bottom, relatedBy: .Equal, toItem: imageView.superview, attribute: .Bottom, multiplier: 1, constant: 0)
        
        leftCons.active = true
        rightCons.active = true
        topCons.active = true
        bottomCons.active = true

    }
    
    // Only change this ViewController bar style
//    
//    override func viewDidAppear(animated: Bool) {
//        self.navigationController?.navigationBar.barStyle = .Black
//    }
//    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 4
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DetailCell", forIndexPath: indexPath) as! DetailTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = museum.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = museum.type
        case 2:
            cell.fieldLabel.text = "Address"
            cell.valueLabel.text = museum.location
        case 3:
            cell.fieldLabel.text = "Visited?"
            cell.valueLabel.text = museum.isVisited ? "Yes" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
            
        }
        
        cell.backgroundColor = UIColor.clearColor()
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
     if editingStyle == .Delete {
     // Delete the row from the data source
     tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
     } else if editingStyle == .Insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        if segue.identifier == "showMap" {
            let destVC = segue.destinationViewController as! MapViewController
            
            destVC.museum = self.museum
        }
     }
 
    
}
