//
//  ViewController.swift
//  BinaryCounter
//
//  Created by Shahad Nasser on 08/12/2021.
//

import UIKit

class ViewController: UIViewController, BinaryCellDelegate {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var numbers = [Int]()
    var total: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        for i in 0..<16{
            numbers.append(Int(round(pow(10, Double(i)))))
        }

    }
    
    func add(number: String) {
        let num: Int = Int(number)!
        total += num
        totalLabel.text = "\(total)"
    }
    
    func substract(number: String) {
        let num: Int = Int(number)!
        total -= num
        totalLabel.text = "\(total)"
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return an integer that indicates how many rows (cells) to draw
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCell
        cell.numberLabel.text = "\(numbers[indexPath.row])"
        cell.delegate = self
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tasks.remove(at: indexPath.row)
//        tableView.reloadData()
//    }
    
}

