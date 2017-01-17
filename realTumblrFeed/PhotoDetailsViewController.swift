//
//  PhotoDetailsViewController.swift
//  realTumblrFeed
//
//  Created by Ka Tai Ho on 1/17/17.
//  Copyright © 2017 SDLtest. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var summaryText: UILabel!
    @IBOutlet weak var articleImage: UIImageView!
    
    @IBOutlet weak var infoView: UIView!
    
    var info: NSDictionary!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
        if let summary = info["reblog"] as? NSDictionary {
            if var content = summary["comment"] as? String {
                summaryText.text = content
                summaryText.sizeToFit()
            }
        }
        
        if let photos = info["photos"] as? [NSDictionary] {
            // photos is NOT nil, go ahead and access element 0 and run the code in the curly braces
            let imageUrlString = photos[0].value(forKeyPath: "original_size.url") as? String
            if let imageUrl = URL(string: imageUrlString!) {
                // URL(string: imageUrlString!) is NOT nil, go ahead and unwrap it and assign it to imageUrl and run the code in the curly braces
                articleImage.setImageWith(imageUrl)
                //print ("changing photo")
            }
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
