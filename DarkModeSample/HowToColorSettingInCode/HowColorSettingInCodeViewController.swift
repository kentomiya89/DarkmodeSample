//
//  HowColorSettingInCodeViewController.swift
//  DarkModeSample
//
//  Created by 宮林健斗 on 2020/09/27.
//  Copyright © 2020 宮林健斗. All rights reserved.
//

import UIKit

class HowColorSettingInCodeViewController: UIViewController {

    @IBOutlet weak var systemColorView: UIView!
    @IBOutlet weak var customColorView: UIView!
    @IBOutlet weak var dynamicColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorTheBackground()
    }
    
    func colorTheBackground() {
        // システムカラー
        systemColorView.backgroundColor = UIColor.systemGroupedBackground
        
        // カスタムカラー
        customColorView.backgroundColor = Asset.Color.sampleColor1.color
        
        // ダイナミックカラー
        dynamicColorView.backgroundColor = UIColor { (traitCollection: UITraitCollection) -> UIColor in
            switch traitCollection.userInterfaceStyle {
            case .unspecified,
                 .light:
                return .black
            case .dark:
                return .white
            @unknown default:
                fatalError()
            }
        }
    }

}
