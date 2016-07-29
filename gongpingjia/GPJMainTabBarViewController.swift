//
//  GPJMainTabBarViewController.swift
//  gongpingjia
//
//  Created by FengLing on 16/7/29.
//  Copyright © 2016年 lk. All rights reserved.
//

import UIKit

class GPJMainTabBarViewController: UITabBarController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var vcs:[UIViewController] = []
        
        for _ in 1...5 {
            
            let vc:UIViewController = UIViewController.init()
            let rand:UInt32 = 255
            vc.view.backgroundColor = UIColor.init(red: (CGFloat)(arc4random_uniform(rand))/255.0, green: (CGFloat)(arc4random_uniform(rand))/255.0, blue: (CGFloat)(arc4random_uniform(rand))/255.0, alpha: 1.0)
            
            let nav:UINavigationController = UINavigationController.init(rootViewController: vc)
            
//            vc.navigationController!.title = "\(index)"
            
            vcs.append(nav)
            
        }
        
        let tabBarView:UIView = UIView.init(frame: self.tabBar.bounds)
        
        tabBarView.backgroundColor = UIColor.grayColor()
        
        self.tabBar.addSubview(tabBarView)
        
        
        self.setViewControllers(vcs, animated: true)
        
        // Do any additional setup after loading the view.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCellWithIdentifier("cell")
        
        if nil == cell {
            cell = UITableViewCell.init(style: .Default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = "index row  is \(indexPath.row)"
        
        return cell!
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
