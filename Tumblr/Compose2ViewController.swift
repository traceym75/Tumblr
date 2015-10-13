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
    
    var textImageViewRestPosition : CGPoint!
    var photoImageViewRestPosition : CGPoint!
    var quoteImageViewRestPosition : CGPoint!
    var linkImageViewRestPosition : CGPoint!
    var chatImageViewRestPosition : CGPoint!
    var videoImageViewRestPosition : CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        textImageViewRestPosition = textImageView.center
        photoImageViewRestPosition = photoImageView.center
        quoteImageViewRestPosition = quoteImageView.center
        linkImageViewRestPosition = linkImageView.center
        chatImageViewRestPosition = chatImageView.center
        videoImageViewRestPosition = videoImageView.center
        
      
        textImageView.frame.origin.y = textImageView.frame.origin.y + 400
        photoImageView.frame.origin.y  = photoImageView.frame.origin.y + 400
        quoteImageView.frame.origin.y  = quoteImageView.frame.origin.y + 400
        linkImageView.frame.origin.y  = linkImageView.frame.origin.y + 400
        chatImageView.frame.origin.y  = chatImageView.frame.origin.y + 400
        videoImageView.frame.origin.y  = videoImageView.frame.origin.y + 400

        
    }
    
    override func viewWillAppear(animated: Bool)  {
        super.viewDidAppear(animated)
        
        
        UIView.animateWithDuration(0.4, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.textImageView.center = self.textImageViewRestPosition
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.photoImageView.center = self.photoImageViewRestPosition
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.quoteImageView.center = self.quoteImageViewRestPosition
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.4, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.linkImageView.center = self.linkImageViewRestPosition
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.3, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.chatImageView.center = self.chatImageViewRestPosition
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.5, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.videoImageView.center = self.videoImageViewRestPosition
            }, completion: nil)
        
        
    }  // ====== VIEW DID APPEAR END
    
    
    override func viewDidDisappear(animated: Bool)  {
        super.viewDidAppear(animated)
        
        
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.textImageView.center = self.textImageViewRestPosition
            }, completion: nil)
        
    }

    @IBAction func onNeverMindButton(sender: AnyObject) {
        
        UIView.animateWithDuration(0.7, animations: { () -> Void in
            
            self.textImageView.center.y = self.textImageView.center.y - 900
            self.photoImageView.center.y = self.photoImageView.center.y - 1200
            self.quoteImageView.center.y = self.quoteImageView.center.y - 850
            self.linkImageView.center.y = self.linkImageView.center.y - 1100
            self.chatImageView.center.y = self.chatImageView.center.y - 1400
            self.videoImageView.center.y = self.videoImageView.center.y - 1000
            
            
            }) { (completed) -> Void in
                 self.dismissViewControllerAnimated(true, completion: nil)

        }
        
        
    // Create a viewDidDisappear, and reset the circles positions?  AND get the previous tab bar to highlight again.
        
        
       
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
