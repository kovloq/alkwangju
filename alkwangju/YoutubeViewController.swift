//
//  YoutubeViewController.swift
//  alkwangju
//
//  Created by lutfiana sari ariestien on 9/27/15.
//  Copyright (c) 2015 Kovloq Technologies. All rights reserved.
//

import UIKit

class YoutubeViewController: UIViewController {
    
    @IBOutlet weak var nav: UINavigationBar!
    @IBOutlet weak var webview: UIWebView!
    var website:String?
    @IBOutlet weak var back: UIBarButtonItem!
    var judul:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
//        println(screenWidth)
        let screenHeight = screenSize.height
//        println(screenHeight)
        var html="<html><body style=\"(margin:0)\"><embed width=\"\(screenWidth)\" height=\"\(screenHeight)\" src=\"https://www.youtube.com/embed/"+website!+"?rel=0&amp;autoplay=1&amp;showinfo=0\" frameborder=\"0\" allowfullscreen></embed></body></html>"
        webview.loadHTMLString(html, baseURL: nil)

       nav.titleTextAttributes=[NSFontAttributeName: UIFont(name: "Helvetica", size: 12)!]
//        nav.topItem?.title=judul
        nav.topItem?.title=" "

       
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func Back(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil) 
        println("backpressed")
    }
    

}
