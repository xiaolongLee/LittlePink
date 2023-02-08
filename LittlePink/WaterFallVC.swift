//
//  WaterFallVC.swift
//  LittlePink
//
//  Created by ld on 2023/2/7.
//

import UIKit
import CHTCollectionViewWaterfallLayout
import XLPagerTabStrip



class WaterFallVC: UICollectionViewController {

    var channel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = collectionView.collectionViewLayout as! CHTCollectionViewWaterfallLayout
        layout.columnCount = 2
        layout.minimumColumnSpacing = kWaterfallPadding
        layout.minimumInteritemSpacing = kWaterfallPadding
        layout.sectionInset = UIEdgeInsets(top: 0, left: kWaterfallPadding, bottom: kWaterfallPadding, right: kWaterfallPadding)

    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
         
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         
        return 13
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kWaterfallCellID, for: indexPath) as! WaterFallCell
        cell.imageV.image = UIImage(named: "\(indexPath.item + 1)")
        
        return cell
    }
 

}


// MARK:CHTCollectionViewWaterfallLayout

extension WaterFallVC : CHTCollectionViewDelegateWaterfallLayout {
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        UIImage(named: "\(indexPath.item + 1)")!.size
    }
    
}


extension WaterFallVC : IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        IndicatorInfo(title: channel)
    }
    
}
