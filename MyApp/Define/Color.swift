//
//  Color.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

/**
 This file defines all colors which are used in this application.
 Please navigate by the control as prefix.
 */

import UIKit

extension App {
    struct Color {
        static let navigationBar = UIColor.black
        static let tableHeaderView = UIColor.gray
        static let tableFooterView = UIColor.red
        static let tableCellTextLabel = UIColor.yellow

        static func button(state: UIControl.State) -> UIColor {
            switch state {
            case UIControl.State.normal: return .blue
            default: return .gray
            }
        }
    }
}
