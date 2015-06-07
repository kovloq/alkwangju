//
//  ViewController.swift
//  alkwangju
//
//  Created by Perdana Adhitama on 6/7/15.
//  Copyright (c) 2015 Kovloq Technologies. All rights reserved.
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    var moviePlayer:MPMoviePlayerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url = NSURL(string: "https://www.youtube.com/watch?v=_p3Aw_W_35Q")
        

        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        moviePlayer.view.frame = self.view.bounds
        moviePlayer.prepareToPlay()
        moviePlayer.scalingMode = .AspectFill
        self.view.addSubview(moviePlayer.view)
//        moviePlayer.view.frame = CGRect(x: 20, y: 100, width: 200, height: 150)
//        
//        self.view.addSubview(moviePlayer.view)
        moviePlayer.fullscreen = true
        
        moviePlayer.controlStyle = MPMovieControlStyle.Embedded
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

