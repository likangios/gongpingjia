//
//  GPJMainTabBarViewController.swift
//  gongpingjia
//
//  Created by FengLing on 16/7/29.
//  Copyright © 2016年 lk. All rights reserved.
//

import UIKit
import SnapKit

class GPJMainTabBarViewController: UITabBarController,UITableViewDelegate,UITableViewDataSource {

    func getRandColor() -> UIColor {
        
        let rand:UInt32 = 255
        
        return UIColor.init(red: (CGFloat)(arc4random_uniform(rand))/255.0, green: (CGFloat)(arc4random_uniform(rand))/255.0, blue: (CGFloat)(arc4random_uniform(rand))/255.0, alpha: 1.0)
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var vcs:[UIViewController] = []
        
        let classNameArr = ["GPJTest1ViewController","GPJTest2ViewController","GPJTest3ViewController","GPJTest4ViewController"]
        
        for  className in classNameArr{
            
            let vc:GPJBaseViewController = GPJBaseViewController.init(nibName: className, bundle: nil)
            
            vc.view.backgroundColor = self.getRandColor()
            
            vc.navigationController?.title = className
            
            let nav:GPJBaseNavigationController = GPJBaseNavigationController.init(rootViewController: vc)
            vcs.append(nav)
            
        }
        
        self.setViewControllers(vcs, animated: true)

        self.creatCustomTabBar()

        
        }
    func creatCustomTabBar(){
        
        self.tabBar.barTintColor = UIColor.clearColor()
        
        let tabBar:GPJCustomTabBarView = NSBundle.mainBundle().loadNibNamed("GPJCustomTabBarView", owner: self, options: nil).last as! GPJCustomTabBarView
        
        self.view.addSubview(tabBar)
        tabBar.snp_makeConstraints { (make) in
            make.bottom.equalTo(-10)
            make.right.equalTo(0)
            make.left.equalTo(0)
            make.height.equalTo(48)
        }
        
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
