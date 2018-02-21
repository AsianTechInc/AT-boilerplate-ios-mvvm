//
//  Font.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
//

/**
 This file defines all fonts which are used in this application.
 Please navigate by the control as prefix.
 Please create base class for automatic font loading.
 */

import UIKit

extension App {
    struct Font {
        static var navigationBar: UIFont {
            return .boldSystemFont(ofSize: 14)
        }

        static var tableHeaderViewTextLabel: UIFont {
            return .boldSystemFont(ofSize: 14)
        }

        static var tableFooterViewTextLabel: UIFont {
            return .boldSystemFont(ofSize: 14)
        }

        static var tableCellTextLabel: UIFont {
            return .systemFont(ofSize: 14)
        }

        static var buttonTextLabel: UIFont {
            return .boldSystemFont(ofSize: 14)
        }
    }
}
