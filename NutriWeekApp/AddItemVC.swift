

import UIKit

class AddItemVC: UIViewController{
    
    var  carros: NSString = ""
    var addItem: [String] = []
    var addn = NutriVC()
    @IBOutlet weak var addItemTxtField: UITextField!
    
    @IBAction func insertButton(sender: UIButton) {
        
        carros = addItemTxtField.text
        addItem.append(carros as String)
        addItemTxtField.text = ""
        println(addItem)
        addn.itensCardapio = addItem
        println(addn.itensCardapio)
    }
    
//    @IBAction func backButton(sender: UIButton) {
//    
//        self.dismissViewControllerAnimated(true, completion: nil)
//    
//  }
    
    
    
    
    
}