//
//  TableCell.swift
//  MyApp
//
//  Created by DaoNV on 6/19/17.
//  Copyright © 2017 Asian Tech Co., Ltd. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        textLabel?.font = Define.Font.tableCellTextLabel
        textLabel?.textColor = Define.Color.tableCellTextLabel
        detailTextLabel?.font = Define.Font.tableCellTextLabel
        detailTextLabel?.textColor = Define.Color.tableCellTextLabel
    }
}
