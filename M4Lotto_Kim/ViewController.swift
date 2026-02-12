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
        let rand1 = Int.random(in: 1...45)
        numLabel1.text = "\(rand1)"
        switch rand1{
        case 1...10:
            numLabel1.backgroundColor = UIColor.red
            numLabel1.textColor = .white
        case 11...20:
            numLabel1.backgroundColor = UIColor.green
            numLabel1.textColor = .black
        case 21...30:
            numLabel1.backgroundColor = UIColor.blue
            numLabel1.textColor = .white
        case 31...40:
            numLabel1.backgroundColor = UIColor.yellow
            numLabel1.textColor = .black
        case 41...45:
            numLabel1.backgroundColor = UIColor.green
            numLabel1.textColor = .black
        default:
            break
        }
        
        let rand2 = Int.random(in: 1...45)
        numLabel2.text = "\(rand2)"
        switch rand2{
        case 1...10:
            numLabel2.backgroundColor = UIColor.red
            numLabel2.textColor = .white
        case 11...20:
            numLabel2.backgroundColor = UIColor.green
            numLabel2.textColor = .black
        case 21...30:
            numLabel2.backgroundColor = UIColor.blue
            numLabel2.textColor = .white
        case 31...40:
            numLabel2.backgroundColor = UIColor.yellow
            numLabel2.textColor = .black
        case 41...45:
            numLabel2.backgroundColor = UIColor.green
            numLabel2.textColor = .black
        default:
            break
        }
        
        let rand3 = Int.random(in: 1...45)
        numLabel3.text = "\(rand3)"
        switch rand3{
        case 1...10:
            numLabel3.backgroundColor = UIColor.red
            numLabel3.textColor = .white
        case 11...20:
            numLabel3.backgroundColor = UIColor.green
            numLabel3.textColor = .black
        case 21...30:
            numLabel3.backgroundColor = UIColor.blue
            numLabel3.textColor = .white
        case 31...40:
            numLabel3.backgroundColor = UIColor.yellow
            numLabel3.textColor = .black
        case 41...45:
            numLabel3.backgroundColor = UIColor.green
            numLabel3.textColor = .black
        default:
            break
        }
        
        let rand4 = Int.random(in: 1...45)
        numLabel4.text = "\(rand4)"
        switch rand4{
        case 1...10:
            numLabel4.backgroundColor = UIColor.red
            numLabel4.textColor = .white
        case 11...20:
            numLabel4.backgroundColor = UIColor.green
            numLabel4.textColor = .black
        case 21...30:
            numLabel4.backgroundColor = .blue
            numLabel4.textColor = .white
        case 31...40:
            numLabel4.backgroundColor = UIColor.yellow
            numLabel4.textColor = .black
        case 41...45:
            numLabel4.backgroundColor = UIColor.green
            numLabel4.textColor = .black
        default:
            break
        }
        
        let rand5 = Int.random(in: 1...45)
        numLabel5.text = "\(rand5)"
        switch rand1{
        case 1...10:
            numLabel5.backgroundColor = UIColor.red
            numLabel5.textColor = .white
        case 11...20:
            numLabel5.backgroundColor = UIColor.green
            numLabel5.textColor = .black
        case 21...30:
            numLabel5.backgroundColor = UIColor.blue
            numLabel5.textColor = .white
        case 31...40:
            numLabel5.backgroundColor = UIColor.yellow
            numLabel5.textColor = .black
        case 41...45:
            numLabel5.backgroundColor = UIColor.green
            numLabel5.textColor = .black
        default:
            break
        }
        
        let rand6 = Int.random(in: 1...45)
        numLabel6.text = "\(rand1)"
        switch rand6{
        case 1...10:
            numLabel6.backgroundColor = UIColor.red
            numLabel6.textColor = .white
        case 11...20:
            numLabel6.backgroundColor = UIColor.green
            numLabel6.textColor = .black
        case 21...30:
            numLabel6.backgroundColor = UIColor.blue
            numLabel6.textColor = .white
        case 31...40:
            numLabel6.backgroundColor = UIColor.yellow
            numLabel6.textColor = .black
        case 41...45:
            numLabel6.backgroundColor = UIColor.green
            numLabel6.textColor = .black
        default:
            break
        }
        
        let rand7 = Int.random(in: 1...45)
        numLabel7.text = "\(rand7)"
        numLabel7.backgroundColor = UIColor.purple
        numLabel7.textColor = .white
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [numLabel1!, numLabel2!, numLabel3!, numLabel4!, numLabel5!, numLabel6!, numLabel7!]
        
        var nums = [Int]()
        while nums.count < labels.count {
            let rndNum = Int.random(in: 1...45)
            if !nums.contains(rndNum){
                nums.append(rndNum)
            }
        }
        let sortedNums = nums.sorted()
//        nums.sorted(by: >) //decending order
        
        for (index,label) in labels.enumerated(){
            label.layer.cornerRadius = label.bounds.width / 2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[index])"  //String Interpolation "\()"
            
            switch sortedNums[index]{
            case 1...10:
                label.backgroundColor = UIColor.red
                label.textColor = .white
            case 11...20:
                label.backgroundColor = UIColor.green
                label.textColor = .black
            case 21...30:
                label.backgroundColor = UIColor.blue
                label.textColor = .white
            case 31...40:
                label.backgroundColor = UIColor.yellow
                label.textColor = .black
            case 41...45:
                label.backgroundColor = UIColor.green
                label.textColor = .black
            default:
                break
            }
            numLabel7.backgroundColor = UIColor.purple
            numLabel7.textColor = .white
        }
        
    }

}

