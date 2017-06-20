//
//  TableCell.swift
//  MyApp
//
//  Created by DaoNV on 6/19/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit
import MVVM

class TableCell: UITableViewCell, MVVM.View {
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configView()
    }

    private func configView() {
        textLabel?.font = Define.Font.tableCellTextLabel
        textLabel?.textColor = Define.Color.tableCellTextLabel
        detailTextLabel?.font = Define.Font.tableCellTextLabel
        detailTextLabel?.textColor = Define.Color.tableCellTextLabel
    }
}
