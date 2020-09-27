//
//  TopCell.swift
//  DarkModeSample
//
//  Created by 宮林健斗 on 2020/08/23.
//  Copyright © 2020 宮林健斗. All rights reserved.
//

import Foundation


struct SampleListCell {
    
    static var cellTitle: [String] {
        return [L10n.howToColorSetting,
                L10n.howToColorSettingInCode,
                L10n.imageSetting,
                L10n.cgColorSetting]
    }
    
    static let cellID = "SampleListCell"
}
