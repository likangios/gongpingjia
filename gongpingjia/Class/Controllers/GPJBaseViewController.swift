//
//  GPJBaseViewController.swift
//  gongpingjia
//
//  Created by FengLing on 16/8/1.
//  Copyright © 2016年 lk. All rights reserved.
//

import UIKit

class GPJBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.respondsToSelector(Selector("setEdgesForExtendedLayout:")) {
            self.edgesForExtendedLayout = .None
        }
        if self.SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO("7.0") {
            self.navigationController?.navigationBar.translucent = true;
        }
    }
    /**
     *  等于某个版本号
     *
     *
     *  @return 等于 YES  否则 NO
     */
    func SYSTEM_VERSION_EQUAL_TO(version:String) -> Bool {
        
        return UIDevice.currentDevice().systemVersion .compare(version, options: .NumericSearch, range: nil, locale: nil) == .OrderedSame
    }
    /**
     *  大于或等于版本号
     *
     *
     *  @return 大于或等于 YES 否则 NO
     */
    func SYSTEM_VERSION_GREATER_THAN(version:String) -> Bool {
        
        return UIDevice.currentDevice().systemVersion .compare(version, options: .NumericSearch, range: nil, locale: nil) == .OrderedDescending
    }
    /**
     *  大于或等于版本号
     *
     *
     *  @return 大于或等于 YES 否则 NO
     */
    func SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(version:String) -> Bool {
        
        return UIDevice.currentDevice().systemVersion .compare(version, options: .NumericSearch, range: nil, locale: nil) != .OrderedAscending

    }
    /**
     *  小于某个版本号
     *
     *
     *  @return 小于 YES 否则 NO
     */
    func SYSTEM_VERSION_LESS_THAN(version:String) -> Bool {
        
        return UIDevice.currentDevice().systemVersion .compare(version, options: .NumericSearch, range: nil, locale: nil) == .OrderedAscending
        
    }
    func SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(version:String) -> Bool {
        
        return UIDevice.currentDevice().systemVersion .compare(version, options: .NumericSearch, range: nil, locale: nil) != .OrderedDescending
        
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
