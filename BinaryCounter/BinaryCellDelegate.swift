//
//  BinaryCellDelegate.swift
//  BinaryCounter
//
//  Created by Shahad Nasser on 09/12/2021.
//

import Foundation
import UIKit
protocol BinaryCellDelegate: AnyObject {
    func add(number: String)
    func substract(number: String)
}
