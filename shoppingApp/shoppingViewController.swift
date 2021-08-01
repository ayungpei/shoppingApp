//
//  shoppingViewController.swift
//  shoppingApp
//
//  Created by apple on 2021/7/31.
//

import UIKit
import Foundation

class shoppingViewController: UIViewController {
    @IBOutlet weak var coffeeNumLabel: UILabel!
    
    @IBOutlet weak var mikiNumLabel: UILabel!
    
    @IBOutlet weak var batmanCarNumLabel: UILabel!
    
    @IBOutlet weak var tokyoNumLabel: UILabel!
    @IBOutlet weak var coffeePriceLabel: UILabel!
    
    @IBOutlet weak var mikiPriceLabel: UILabel!
    
    @IBOutlet weak var batmanPricelabel: UILabel!
    
    @IBOutlet weak var tokyoPriceLabel: UILabel!
    
    @IBOutlet weak var coffeeStepper: UIStepper!
    
    @IBOutlet weak var mikiStepper: UIStepper!
    
    @IBOutlet weak var batmanStepper: UIStepper!
    
    @IBOutlet weak var tokyoStepper: UIStepper!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coffeePriceLabel.text = "1700"
        mikiPriceLabel.text = "3800"
        batmanPricelabel.text = "9900"
        tokyoPriceLabel.text = "4500"
        
    }
    
    //第一步：按下stepper改變數量
    var itemCoffee:Int = 0
    var itemMiki:Int = 0
    var itemBatman:Int = 0
    var itemTokyo:Int = 0
    
    @IBAction func calculateSum(_ sender: Any) {
        itemCoffee = Int(coffeeStepper.value)
        itemMiki = Int(mikiStepper.value)
        itemBatman = Int(batmanStepper.value)
        itemTokyo = Int(tokyoStepper.value)
        
        coffeeNumLabel.text = String(itemCoffee)
        mikiNumLabel.text = String(itemMiki)
        batmanCarNumLabel.text = String(itemBatman)
        tokyoNumLabel.text = String(itemTokyo)
        
        calculate()
    }
    func calculate(){
        
        let coffeePrice = Int(coffeePriceLabel.text!)!
        let mikiPrice = Int(mikiPriceLabel.text!)!
        let batmanPrice = Int(batmanPricelabel.text!)!
        let tokyoPrice = Int(tokyoPriceLabel.text!)!
        
        
         let sum = coffeePrice * Int(itemCoffee) + mikiPrice * Int(itemMiki) + batmanPrice * Int(itemBatman) + tokyoPrice * Int(itemTokyo)
        totalLabel.text = String(sum)
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyISOCode
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.maximumFractionDigits = 0
        totalLabel.text = formatter.string(from: NSNumber(value: sum))
    }
    
  
    @IBAction func zeroButton(_ sender: Any) {
        coffeeStepper.value = 0
        batmanStepper.value = 0
        mikiStepper.value = 0
        tokyoStepper.value = 0
        coffeeNumLabel.text = String("0")
        batmanCarNumLabel.text = String("0")
        mikiNumLabel.text = String("0")
        tokyoNumLabel.text = String("0")
        totalLabel.text = String("0")
    }
    
  
     
}
