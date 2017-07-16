//
//  Button.swift
//  MyApp
//
//  Created by DaoNV on 6/20/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class Button: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configView()
    }

    private func configView() {
        titleLabel?.font = App.Font.buttonTextLabel
        for state: UIControlState in [.normal, .highlighted, .selected, .disabled] {
            setTitleColor(App.Color.button(state: state), for: state)
        }
    }
}
