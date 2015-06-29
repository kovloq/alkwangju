//
//  ViewController.swift
//  alkwangju
//
//  Created by Perdana Adhitama on 6/7/15.
//  Copyright (c) 2015 Kovloq Technologies. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var arr=["Satu","Dua","Tiga"]
    
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
        
        // add something to messages
       
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

