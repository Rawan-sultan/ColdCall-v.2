//
//  ViewController.swift
//  Assignment: ColdCall v.2
//
//  Created by admin on 11/9/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LabelOfNumbers: UILabel!
    
    @IBOutlet weak var LabelValue: UILabel!
    
    @IBOutlet weak var ButtenValue: UIButton!
    var arr = ["Uyanga", "Joshua", "Brian", "Antony", "Micheal", "Cody", "Ryota"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Buttenclick(_ sender: Any) {
        var number = Int.random(in: 1...5)
        var index = Int.random(in: 0...arr.count - 1)

        switch number{
        case 1,2:
            LabelOfNumbers.textColor = .red
            LabelOfNumbers.text = String(number)
        case 3,4:
            LabelOfNumbers.textColor = .orange
            LabelOfNumbers.text = String(number)
        case 5:
            LabelOfNumbers.textColor = .green
            LabelOfNumbers.text = String(number)
        default:
            print("Wrong Number")
        }
        
        if index >= arr.count{
            return}
        else {
            LabelValue.text = arr[index]

            index += 1
            
        }
    }
}

