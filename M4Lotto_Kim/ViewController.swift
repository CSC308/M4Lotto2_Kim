//
//  ViewController.swift
//  M4Lotto_Kim
//
//  Created by Eun Mi Kim on 2/10/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         1-10: red
         11-20:green
         21-30:blue
         31-40:yellow
         41-45:green
         Bonus: purple
         */
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let labels = [numLabel1!,numLabel2!,numLabel3!,numLabel4!,numLabel5!,numLabel6!,numLabel7!]
        var nums = [Int]()
        while nums.count < labels.count {
            let rnd = Int.random(in: 1...45)
            if !nums.contains(rnd) {
                nums.append(rnd)
            }
        }
        let sortedNums = nums.sorted()
        
        for (index,label) in labels.enumerated() {
            label.layer.cornerRadius = numLabel1.bounds.width / 2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[index])"
            
            switch sortedNums[index] {
            case 1...10:
                label.backgroundColor = UIColor.red
                label.textColor = UIColor.white
            case 11...20:
                label.backgroundColor = UIColor.green
                label.textColor = UIColor.black
            case 21...30:
                label.backgroundColor = UIColor.blue
                label.textColor = UIColor.white
            case 31...40:
                label.backgroundColor = UIColor.yellow
                label.textColor = UIColor.white
            case 41...45:
                label.backgroundColor = UIColor.gray
                label.textColor = UIColor.white
            default:
                break
            }
        }
        numLabel7.backgroundColor = UIColor.purple
        numLabel7.textColor = UIColor.white
    }

}

