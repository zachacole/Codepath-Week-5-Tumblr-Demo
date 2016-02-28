//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by Zach Cole on 2/25/16.
//  Copyright © 2016 Zach Cole. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var textIcon: UIImageView!
    @IBOutlet weak var photoIcon: UIImageView!
    @IBOutlet weak var quoteIcon: UIImageView!
    @IBOutlet weak var linkIcon: UIImageView!
    @IBOutlet weak var chatIcon: UIImageView!
    @IBOutlet weak var videoIcon: UIImageView!
    
    var offset: CGFloat!
    var textDown: CGPoint!
    var photoDown: CGPoint!
    var quoteDown: CGPoint!
    var linkDown: CGPoint!
    var chatDown: CGPoint!
    var videoDown: CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        offset = 400
        textDown = CGPoint(x: textIcon.center.x, y: textIcon.center.y + offset)
        photoDown = CGPoint(x: photoIcon.center.x, y: photoIcon.center.y + offset)
        quoteDown = CGPoint(x: quoteIcon.center.x, y: quoteIcon.center.y + offset)
        linkDown = CGPoint(x: linkIcon.center.x, y: linkIcon.center.y + offset)
        chatDown = CGPoint(x: chatIcon.center.x, y: chatIcon.center.y + offset)
        videoDown = CGPoint(x: videoIcon.center.x, y: videoIcon.center.y + offset)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        textIcon.center = textDown
        photoIcon.center = photoDown
        quoteIcon.center = quoteDown
        linkIcon.center = linkDown
        chatIcon.center = chatDown
        videoIcon.center = videoDown
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.1) { () -> Void in
            self.textIcon.transform = CGAffineTransformMakeTranslation(0, -400)
        }
        
        UIView.animateWithDuration(0.18) { () -> Void in
            self.photoIcon.transform = CGAffineTransformMakeTranslation(0, -400)
        }
        
        UIView.animateWithDuration(0.26) { () -> Void in
            self.quoteIcon.transform = CGAffineTransformMakeTranslation(0, -400)
        }
        
        UIView.animateWithDuration(0.34) { () -> Void in
            self.linkIcon.transform = CGAffineTransformMakeTranslation(0, -400)
        }
        
        UIView.animateWithDuration(0.42) { () -> Void in
            self.chatIcon.transform = CGAffineTransformMakeTranslation(0, -400)
        }
        
        UIView.animateWithDuration(0.50) { () -> Void in
            self.videoIcon.transform = CGAffineTransformMakeTranslation(0, -400)
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    @IBAction func didTapDismiss(sender: UIButton) {
        
        UIView.animateWithDuration(0.1) { () -> Void in
            self.textIcon.transform = CGAffineTransformMakeTranslation(0, -800)
        }
        
        UIView.animateWithDuration(0.18) { () -> Void in
            self.photoIcon.transform = CGAffineTransformMakeTranslation(0, -800)
        }
        
        UIView.animateWithDuration(0.26) { () -> Void in
            self.quoteIcon.transform = CGAffineTransformMakeTranslation(0, -800)
        }
        
        UIView.animateWithDuration(0.34) { () -> Void in
            self.linkIcon.transform = CGAffineTransformMakeTranslation(0, -800)
        }
        
        UIView.animateWithDuration(0.42) { () -> Void in
            self.chatIcon.transform = CGAffineTransformMakeTranslation(0, -800)
        }
        
        UIView.animateWithDuration(0.50) { () -> Void in
            self.videoIcon.transform = CGAffineTransformMakeTranslation(0, -800)
        }
        
        delay(0.6) {
            self.textIcon.hidden = true
            self.photoIcon.hidden = true
            self.quoteIcon.hidden = true
            self.linkIcon.hidden = true
            self.chatIcon.hidden = true
            self.videoIcon.hidden = true
        }
        
        delay(0.8) {
            self.dismissViewControllerAnimated(true, completion: nil)
        }
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
