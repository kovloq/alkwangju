//
//  ViewController.swift
//  alkwangju
//
//  Created by Perdana Adhitama on 6/7/15.
//  Copyright (c) 2015 Kovloq Technologies. All rights reserved.
//
// Youtube Chanel ID = UChL3OZcOBMVTS1nwcyzeYEA
// Playlist ID = UUhL3OZcOBMVTS1nwcyzeYEA
// URL to receive all videos https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=UUhL3OZcOBMVTS1nwcyzeYEA&key=AIzaSyCdcTS9ldzD9byz4Gpqj7-o8g2hbOLHJRY&maxResults=50


import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    var arr=[String]()
    
    @IBOutlet
    var table: UITableView!
    var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(self.tableView)
        
        //Auto-set the UITableViewCells height (requires iOS8)
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 44
        tableView.frame = CGRect(x: 0, y: 65, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=UUhL3OZcOBMVTS1nwcyzeYEA&key=AIzaSyCdcTS9ldzD9byz4Gpqj7-o8g2hbOLHJRY&maxResults=50"
        
        if let url = NSURL(string: urlString){
            if let data = NSData(contentsOfURL: url){
                if let json: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary {
                    if let items = json["items"] as? NSArray {
                        for item in items {
//                            let obj = item as NSDictionary
                            if let snippet = item["snippet"] as? NSDictionary {
                                let title=snippet["title"] as String
                                arr.append(title)
                            }
//                            let id = item["id"] as String
                            
                        }
                    }
                }
            }
        }
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text=arr[indexPath.row]
        return cell;
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("toYoutubeViewController", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="toYoutubeViewController" {
            let vc=segue.destinationViewController as UIViewController
            let indexpath: NSIndexPath = tableView.indexPathForSelectedRow()!
            vc.title=arr[indexpath.row]
        }
    }
    
    
}

