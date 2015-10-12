//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Tracey Ewart on 10/7/15.
//  Copyright © 2015 Tracey Ewart. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var homeButton: UIButton!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!

    var previousButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        // Do any additional setup after loading the view.

         // onHomeButton(homeButton)
        
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)
        searchViewController.view.frame = contentView.bounds
        
    }

    

    @IBAction func onHomeButton(button: UIButton) {
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(homeViewController)
        contentView.addSubview(homeViewController.view)
        homeViewController.didMoveToParentViewController(self)
        homeViewController.view.frame = contentView.bounds
        previousButton = button
        
  }
    
    
    @IBAction func onSearchButton(button: UIButton) {
        if previousButton != nil {
            previousButton.selected = false
            }
        button.selected = true
        addChildViewController(searchViewController)
        contentView.addSubview(searchViewController.view)
        searchViewController.didMoveToParentViewController(self)
        searchViewController.view.frame = contentView.bounds
        previousButton = button
  }
  
    
    
    @IBAction func onAccountButton(button: UIButton) {
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(accountViewController)
        contentView.addSubview(accountViewController.view)
        accountViewController.didMoveToParentViewController(self)
        accountViewController.view.frame = contentView.bounds
        previousButton = button
    }
    
    
    @IBAction func onTrendingButton(button: UIButton) {
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        addChildViewController(trendingViewController)
        contentView.addSubview(trendingViewController.view)
        trendingViewController.didMoveToParentViewController(self)
        trendingViewController.view.frame = contentView.bounds
        previousButton = button
    }
    
    @IBAction func onComposeButton(button: UIButton) {
        if previousButton != nil {
            previousButton.selected = false
        }
        button.selected = true
        previousButton = button
        
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
