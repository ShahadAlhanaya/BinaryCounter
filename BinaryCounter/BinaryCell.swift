//
//  BinaryCell.swift
//  BinaryCounter
//
//  Created by Shahad Nasser on 09/12/2021.
//

import UIKit

class BinaryCell: UITableViewCell {
    @IBOutlet weak var numberLabel: UILabel!
    
    var delegate: BinaryCellDelegate?

    @IBAction func plusButtonPressed(_ sender: UIButton) {
        delegate?.add(number: numberLabel.text!)
    }
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        delegate?.substract(number: numberLabel.text!)
    }
    

}
