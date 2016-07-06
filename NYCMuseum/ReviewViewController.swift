//
//  ReviewViewController.swift
//  NYCMuseum
//
//  Created by Wei Xia on 7/5/16.
//  Copyright © 2016 Wei Xia. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var ratingStackView: UIStackView!
    
    @IBAction func ratingBtnTapped(sender: UIButton) {
        switch sender.tag {
        case 1:
            rating = "dislike"
        case 2:
            rating = "good"
        case 3:
            rating = "great"
        default:
            break
        }
        
        performSegueWithIdentifier("unwindToDetailView", sender: sender)
    }
    
    var rating: String?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: .Light)
        let effectView = UIVisualEffectView(effect: blurEffect)
        effectView.frame = view.frame
        imageView.addSubview(effectView)
        
//        ratingStackView.transform = CGAffineTransformMakeScale(0, 0)
        
        let scale = CGAffineTransformMakeScale(0, 0)
        let translation = CGAffineTransformMakeTranslation(0, 500)
        
        ratingStackView.transform = CGAffineTransformConcat(scale, translation)
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
                UIView.animateWithDuration(1) {
                    self.ratingStackView.transform = CGAffineTransformIdentity
                }
        
//        UIView.animateWithDuration(0.3, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
//            self.ratingStackView.transform = CGAffineTransformIdentity
//            }, completion: nil)
        
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
