//
//  PlaylistController.swift
//  alkwangju
//
//  Created by lutfiana sari ariestien on 9/27/15.
//  Copyright (c) 2015 Kovloq Technologies. All rights reserved.
//

import UIKit

class PlaylistController: UITableViewController {
    
    var arr=[String]()
    var videoid=[String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=UUhL3OZcOBMVTS1nwcyzeYEA&key=AIzaSyCdcTS9ldzD9byz4Gpqj7-o8g2hbOLHJRY&maxResults=50"
        
        if let url = NSURL(string: urlString){
            if let data = NSData(contentsOfURL: url){
                if let json: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary {
                    if let items = json["items"] as? NSArray {
                        for item in items {
                            
                            if let snippet = item["snippet"] as? NSDictionary {
                                let title=snippet["title"] as String
                                arr.append(title)
                                let resource = snippet["resourceId"] as NSDictionary
                                let vidid = resource["videoId"] as String
                                videoid.append(vidid)
                            }
                            
                           
                            
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
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        cell.textLabel?.text=arr[indexPath.row]
        return cell;
    }
    
    // MARK: - UITableViewDelegate Methods
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        performSegueWithIdentifier("toYoutube", sender: row)
//        println(row)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue,
        sender: AnyObject?) {
            
            if segue.identifier == "toYoutube" {
                let detailViewController = segue.destinationViewController
                    as YoutubeViewController
                let myIndexPath = self.tableView.indexPathForSelectedRow()?.row
                
                detailViewController.website = videoid[myIndexPath!]
                detailViewController.title=arr[myIndexPath!]
                detailViewController.judul=arr[myIndexPath!]
              
            }
    }
}
