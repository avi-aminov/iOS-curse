//
//  BillViewController.swift
//  PizzaOrders
//
//  Created by Avi Aminov on 13/10/2020.
//  Copyright © 2020 Avi Aminov. All rights reserved.
//

import UIKit

class BillViewController: UIViewController {

    var size:Int?
    var toppings:[Int:Bool]?
    
    @IBOutlet weak var displayBill: UITextView!
    
    var displaySize = "";
    var displayToppings = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true;
        
        if let size = size{
            displaySize = getPizzaNameById(size: size)
        }
        
        if let toppings = toppings {
            displayToppings = getToppingById(toppings: toppings)
        }
        
        displayBill.text = "Pizza: \(displaySize), \n Toppings: \(displayToppings)"
    }
    
    func getPizzaNameById(size: Int) -> String {
        var result:String = "";
        if size == 1{
            result = "M"
        }else if size == 2{
            result = "L"
        }else if size == 3{
            result = "XL"
        }
        return result
    }
    
    func getToppingById(toppings: [Int:Bool]) -> String {
        var result:String = "";
        
        for (key, value) in toppings {
            print("k: \(key)")
            print("v: \(value)")
            if value == true {
                if key == 1{
                    result += " Mashrooms "
                }else if key == 2{
                    result += " Tomatocs "
                }else if key == 3{
                    result += " Onion "
                }
            }
        }
        return result
    }

}
