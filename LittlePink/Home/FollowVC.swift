//
//  FollowVC.swift
//  LittlePink
//
//  Created by ld on 2023/2/6.
//

import UIKit
import XLPagerTabStrip

class FollowVC : UIViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
         IndicatorInfo(title: "关注")
    }
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
    }
    
    
}
