

import UIKit

class AddItemVC: UIViewController{
    
    var  carros: NSString = ""
    var addItem: [String] = []
    
    @IBOutlet weak var addItemTxtField: UITextField!
    
    @IBAction func insertButton(sender: UIButton) {
        
        carros = addItemTxtField.text
        addItem.append(carros as String)
        addItemTxtField.text = ""
        println(addItem)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var destVC: NutriVC = segue.destinationViewController as! NutriVC
        destVC.itensCardapio = addItem
    
    }
    
}