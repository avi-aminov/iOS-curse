//
//  ChooseSizeViewController.swift
//  PizzaOrders
//
//  Created by Avi Aminov on 13/10/2020.
//  Copyright © 2020 Avi Aminov. All rights reserved.
//

import UIKit

class ChooseSizeViewController: UIViewController {
    var size = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseSizeBtn(_ sender: UIButton) {
        size = sender.tag
        performSegue(withIdentifier: "toppings", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let dest = segue.destination as? ChooseToppingsViewController{
            dest.size = size
        }
    }
}
