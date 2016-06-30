//
//  MuseumTableViewController.swift
//  NYCMuseum
//
//  Created by Wei Xia on 6/29/16.
//  Copyright © 2016 Wei Xia. All rights reserved.
//

import UIKit

class MuseumTableViewController: UITableViewController {
    
    var musumes = [
        Museum(name: "9/11 Tribute Center", type: "History", location: "Manhattan", image: "911-Tribute-Center.jpg", isVisited:false),
        Museum(name: "African Burial Ground National Monument", type: "History", location: "Manhattan", image: "African-Burial-Ground-National-Monument.jp g", isVisited:false),
        Museum(name: "AIGA National Design Center", type: "Art", location: "Manhattan", image: "AIGA-National-Design-Center.jpg", isVisited:false),
        Museum(name: "A.I.R. Gallery", type: "Art", location: "Brooklyn", image: "A.I.R.-Gallery.jpg", isVisited:false),
        Museum(name: "Alice Austen House", type: "Historic house", location: "Staten Island", image: "Alice-Austen-House.jpg", isVisited:false),
        Museum(name: "American Academy of Arts and Letters", type: "Art", location: "Manhattan", image: "American-Academy-of-Arts-and-Letters.jpg", isVisited:false),
        Museum(name: "American Folk Art Museum", type: "Art", location: "Manhattan", image: "American-Folk-Art-Museum.jpg", isVisited:false),
        Museum(name: "American Museum of Natural History", type: "Natural history", location: "Manhattan", image: "American-Museum-of-Natural-History.jpg", isVisited:false),
        Museum(name: "American Numismatic Society Museum", type: "Numismatic", location: "Manhattan", image: "American-Numismatic-Society-Museum.jpg", isVisited:false),
        Museum(name: "Americas Society", type: "Art", location: "Manhattan", image: "Americas-Society.jpg", isVisited:false),
        Museum(name: "Anne Frank Center USA", type: "History", location: "Manhattan", image: "Anne-Frank-Center-USA.jpg", isVisited:false),
        Museum(name: "Aperture Foundation", type: "Media", location: "Manhattan", image: "Aperture-Foundation.jpg", isVisited:false),
        Museum(name: "Art in General", type: "Art", location: "Manhattan", image: "Art-in-General.jpg", isVisited:false),
        Museum(name: "Artists Space", type: "Art", location: "Manhattan", image: "Artists-Space.jpg", isVisited:false),
        Museum(name: "Asia Society", type: "Art", location: "Manhattan", image: "Asia-Society.jpg", isVisited:false),
        Museum(name: "Asian American Arts Centre", type: "Art", location: "Manhattan", image: "Asian-American-Arts-Centre.jpg", isVisited:false),
        Museum(name: "Austrian Cultural Forum New York", type: "Culture", location: "Manhattan", image: "Austrian-Cultural-Forum-New-York.jpg", isVisited:false),
        Museum(name: "Bard Graduate Center", type: "Art", location: "Manhattan", image: "Bard-Graduate-Center.jpg", isVisited:false),
        Museum(name: "Bartow-Pell Mansion", type: "Historic house", location: "Bronx", image: "Bartow-Pell-Mansion.jpg", isVisited:false),
        Museum(name: "Bayside Historical Society", type: "History", location: "Queens", image: "Bayside-Historical-Society.jpg", isVisited:false)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    // Hide Saatus Bar
    //    override func prefersStatusBarHidden() -> Bool {
    //        return true
    //    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musumes.count
    }
    //
    //    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 0
    //    }
    //
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CustomTableViewCell
        
        // Configure the cell...
        cell.MuseumName.text = musumes[indexPath.row].name
        cell.MuseumeType.text = musumes[indexPath.row].type
        cell.MuseumeLocation.text = musumes[indexPath.row].location
        cell.MusumeImage.image = UIImage(named: musumes[indexPath.row].image)
        
        //        cell.MusumeImage.layer.cornerRadius = cell.MusumeImage.frame.size.width / 2
        cell.MusumeImage.layer.cornerRadius = 10
        cell.MusumeImage.clipsToBounds = true
        
        //        if visitedMuseum[indexPath.row] == true {
        //            cell.accessoryType = .Checkmark
        //        } else {
        //            cell.accessoryType = .None
        //        }
        
        cell.accessoryType = musumes[indexPath.row].isVisited ? .Checkmark:.None
        
        return cell
    }
    
    //    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    //        let option = UIAlertController(title: "Hey there", message: "Select Me", preferredStyle: UIAlertControllerStyle.ActionSheet)
    //
    //        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
    //
    //        let call = { (action: UIAlertAction) -> Void in
    //            let alert = UIAlertController(title: "Note", message: "You can't reach this call", preferredStyle: .Alert)
    //            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
    //
    //            alert.addAction(action)
    //            self.presentViewController(alert, animated: true, completion: nil)
    //        }
    //
    //        let dialAction = UIAlertAction(title: "Call 917-619-036\(indexPath.row)", style: .Default, handler: call)
    //
    //        let isVisited = UIAlertAction(title: "Visited", style: .Default) { (_) in
    //            let cell = tableView.cellForRowAtIndexPath(indexPath)
    //            cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
    //
    //            self.visitedMuseum[indexPath.row] = true
    //        }
    //
    //        option.addAction(cancel)
    //        option.addAction(dialAction)
    //        option.addAction(isVisited)
    //
    //        self.presentViewController(option, animated: true, completion: nil)
    //
    //    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            musumes.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            
        } else if editingStyle == .Insert {
            
        }
    }
    
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let shareTo = UITableViewRowAction(style: .Default, title: "Share") { (action, indexPath) in
            
            let alert = UIAlertController(title: "Share to", message: "Select where to share", preferredStyle: .ActionSheet)
            
            let shareToFacebook = UIAlertAction(title: "Facebook", style: .Default, handler: nil)
            let shareToTwitter = UIAlertAction(title: "Twitter", style: .Default, handler: nil)
            let shareToInstagram = UIAlertAction(title: "Instagram", style: .Default, handler: nil)
            let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)
            
            
            alert.addAction(shareToFacebook)
            alert.addAction(shareToTwitter)
            alert.addAction(shareToInstagram)
            alert.addAction(cancel)
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
        shareTo.backgroundColor = UIColor(red: 218/255, green: 225/255, blue: 218/255, alpha: 1)
        
        
        let deleteFrom = UITableViewRowAction(style: .Default, title: "Delete") { (action, indexPath) in
            
            self.musumes.removeAtIndex(indexPath.row)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
        
        return [shareTo, deleteFrom]
    }
    
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
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMuseumDetail" {
            let destVC = segue.destinationViewController as! DetailTableViewController
            destVC.museum = musumes[(tableView.indexPathForSelectedRow!.row)]
        }
        
    }
    
}
