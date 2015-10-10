//
//  Compose2ViewController.swift
//  Tumblr
//
//  Created by Tracey Ewart on 10/9/15.
//  Copyright © 2015 Tracey Ewart. All rights reserved.
//

import UIKit

class Compose2ViewController: UIViewController {

    @IBOutlet weak var textImageView: UIButton!
    @IBOutlet weak var photoImageView: UIButton!
    @IBOutlet weak var quoteImageView: UIButton!
    @IBOutlet weak var linkImageView: UIButton!
    @IBOutlet weak var chatImageView: UIButton!
    @IBOutlet weak var videoImageView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      
        //tileOneOriginalPosition = tileOneImageView.center
        
        UIView.animateWithDuration(0.4, animations: {
            // This causes first view to fade in and second view to fade out
            //self.textImageView.alpha = 1
           // self.photoImageView.alpha = 0
        })
        
        
        
        
    }

    @IBAction func onNeverMindButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
