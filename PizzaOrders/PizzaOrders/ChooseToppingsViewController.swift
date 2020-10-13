//
//  ChooseToppingsViewController.swift
//  PizzaOrders
//
//  Created by Avi Aminov on 13/10/2020.
//  Copyright © 2020 Avi Aminov. All rights reserved.
//

import UIKit

class ChooseToppingsViewController: UIViewController {

    var size:Int?
    var topping = [1: false,2: false,3: false]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let size = size {
            print(size)
        }
    }
    
    @IBAction func ChooseToppings(_ sender: UIButton) {
        topping[sender.tag] = !topping[sender.tag]!
        sender.backgroundColor = topping[sender.tag] == true ? #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    @IBAction func OrderBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "bill", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let dest = segue.destination as? BillViewController{
            dest.toppings = topping
            dest.size = size
        }
    }
}
