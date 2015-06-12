//
//  ViewController.swift
//  NutriWeekApp
//
//  Created by Gabarron on 11/06/15.
//  Copyright (c) 2015 Gabarron. All rights reserved.
//

import UIKit

class NutriVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    var diasSemana = ["Segunda-Feira", "Terça-Feira", "Quarta-Feira-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado", "Domingo"]
    let ReuseIdentifier: String = "ReuseIdentifier"
    var itensCardapio: [String] = []
   //var add = AddItemVC()
    
    
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
        
       // itensCardapio = add.addItem
        
        println(itensCardapio)
        tableView.reloadData()
        
    }

    @IBAction func AddItem(sender: UIButton) {
        
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 5 //itensCardapio.count
        
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
    
        return cell
    
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        headerView.backgroundColor = UIColor(red: 40/255, green: 110/255, blue: 150/255, alpha: 1)
        
        var label: UILabel = UILabel(frame: CGRect(x: 42, y: 0, width: 300, height: 50))
        label.textColor = UIColor.whiteColor()
        label.textAlignment = .Center
        label.text = diasSemana[section]
        label.font = UIFont(name:"AmericanTypewriter-Bold", size: 30)
        headerView.addSubview(label)
        
        return headerView
    }

}

