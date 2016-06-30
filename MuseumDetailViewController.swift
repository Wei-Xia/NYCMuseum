//
//  MuseumDetailViewController.swift
//  NYCMuseum
//
//  Created by Wei Xia on 6/29/16.
//  Copyright © 2016 Wei Xia. All rights reserved.
//

import UIKit

class MuseumDetailViewController: UIViewController {

    @IBOutlet weak var museumImage: UIImageView!
    
    var museum : Museum!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        museumImage.image = UIImage(named: museum.image)    // For loading image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
