//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Zach Cole on 2/25/16.
//  Copyright © 2016 Zach Cole. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var composeButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var trendingButton: UIButton!
    @IBOutlet weak var toolTipView: UIImageView!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var fadeTransition: FadeTransition!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
        homeButton.selected = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.8, delay: 0, options: [.Repeat, .Autoreverse], animations: { () -> Void in
            self.toolTipView.transform = CGAffineTransformMakeTranslation(0, -8)
            }, completion: nil)
    }
    
    @IBAction func onHomeButton(sender: UIButton) {
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
        homeButton.selected = true
        searchButton.selected = false
        accountButton.selected = false
        trendingButton.selected = false
    }
    
    @IBAction func onSearchButton(sender: UIButton) {
        searchViewController.view.frame = contentView.frame
        contentView.addSubview(searchViewController.view)
        homeButton.selected = false
        searchButton.selected = true
        accountButton.selected = false
        trendingButton.selected = false
        
        UIView.animateWithDuration(0.3) { () -> Void in
            self.toolTipView.alpha = 0
        }
    }
    
    @IBAction func onAccountButton(sender: UIButton) {
        accountViewController.view.frame = contentView.frame
        contentView.addSubview(accountViewController.view)
        homeButton.selected = false
        searchButton.selected = false
        accountButton.selected = true
        trendingButton.selected = false
    }
    
    @IBAction func onTrendingButton(sender: UIButton) {
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
        homeButton.selected = false
        searchButton.selected = false
        accountButton.selected = false
        trendingButton.selected = true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Access the ViewController that you will be transitioning to, a.k.a, the destinationViewController.
        let destinationViewController = segue.destinationViewController
        
        // Set the modal presentation style of your destinationViewController to be custom.
        destinationViewController.modalPresentationStyle = UIModalPresentationStyle.Custom
        
        // Create a new instance of your fadeTransition.
        fadeTransition = FadeTransition()
        
        // Tell the destinationViewController's  transitioning delegate to look in fadeTransition for transition instructions.
        destinationViewController.transitioningDelegate = fadeTransition
        
        // Adjust the transition duration. (seconds)
        fadeTransition.duration = 0.2
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
