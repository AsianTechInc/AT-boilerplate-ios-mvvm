//
//  Button.swift
//  MyApp
//
//  Created by iOSTeam on 2/21/18.
//  Copyright © 2018 Asian Tech Co., Ltd. All rights reserved.
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
        for state: UIControl.State in [.normal, .highlighted, .selected, .disabled] {
            setTitleColor(App.Color.button(state: state), for: state)
        }
    }
}
