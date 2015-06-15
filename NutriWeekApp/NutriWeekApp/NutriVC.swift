
import UIKit

class NutriVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var diasSemana = ["Segunda-Feira", "Terça-Feira", "Quarta-Feira-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado", "Domingo"]
    let ReuseIdentifier: String = "ReuseIdentifier"
    var itensCardapio: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var addItemVC: AddItemVC = segue.destinationViewController as! AddItemVC
        addItemVC.addItem = itensCardapio
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return itensCardapio.count
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return diasSemana.count
    }
    
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 45
        
    }
    
    
   func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell
    
    cell = self.tableView.dequeueReusableCellWithIdentifier(ReuseIdentifier, forIndexPath: indexPath) as! UITableViewCell
    
    let customCell: CelulaDS = cell as! CelulaDS
    
    customCell.labelCell.text = itensCardapio[indexPath.row]
    
        return cell
    
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        headerView.backgroundColor = UIColor(red: 40/255, green: 150/255, blue: 120/255, alpha: 1)
        
        var label: UILabel = UILabel(frame: CGRect(x: 42, y: 0, width: 300, height: 50))
        label.textColor = UIColor.whiteColor()
        label.textAlignment = .Center
        label.text = diasSemana[section]
        label.font = UIFont(name:"AmericanTypewriter-Bold", size: 30)
        headerView.addSubview(label)
        
        return headerView
        
    }
    
    

}

