//
//  CgColorSettingViewController.swift
//  DarkModeSample
//
//  Created by 宮林健斗 on 2020/09/27.
//  Copyright © 2020 宮林健斗. All rights reserved.
//

import UIKit

class CgColorSettingViewController: UIViewController {

    @IBOutlet weak var cGColorSampleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cGColorSampleView.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        cGColorSampleView.layer.cornerRadius = 1
        cGColorSampleView.layer.shadowRadius = 10
        cGColorSampleView.layer.shadowColor = UIColor.black.cgColor
        setShadow()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        setShadow()
    }

    func setShadow() {
        if UITraitCollection.current.userInterfaceStyle == .light {
            // ライトは影あり
            cGColorSampleView.layer.shadowOpacity = 0.8
        } else {
            // ダークは影なし
            cGColorSampleView.layer.shadowOpacity = 0
        }
    }
}
