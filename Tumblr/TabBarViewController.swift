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
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        composeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onHomeButton(sender: UIButton) {
        homeViewController.view.frame = contentView.frame
        contentView.addSubview(homeViewController.view)
    }
    
    @IBAction func onSearchButton(sender: UIButton) {
        searchViewController.view.frame = contentView.frame
        contentView.addSubview(searchViewController.view)
    }
    
    @IBAction func onComposeButton(sender: UIButton) {
        composeViewController.view.frame = contentView.frame
        contentView.addSubview(composeViewController.view)
    }
    
    @IBAction func onAccountButton(sender: UIButton) {
        accountViewController.view.frame = contentView.frame
        contentView.addSubview(accountViewController.view)
    }
    
    @IBAction func onTrendingButton(sender: UIButton) {
        trendingViewController.view.frame = contentView.frame
        contentView.addSubview(trendingViewController.view)
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
