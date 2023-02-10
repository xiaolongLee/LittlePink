//
//  NearByVC.swift
//  LittlePink
//
//  Created by ld on 2023/2/6.
//

import UIKit
import XLPagerTabStrip


class NearByVC: UIViewController, IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: XLPagerTabStrip.PagerTabStripViewController) -> XLPagerTabStrip.IndicatorInfo {
         IndicatorInfo(title: NSLocalizedString("NearBy", comment: "首页上方的附近标签"))
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    

   

}
