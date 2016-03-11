//
//  extraFlavorViewController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 08/03/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import UIKit


class extraFlavorViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var arr = [String]()
    var temp3 = pizzaPersonalizada()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var flavorLabel: UILabel!
    
    
    let flavors = ["Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.allowsMultipleSelection = true


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    
    override func viewWillAppear(animated: Bool) {
        print("Pizza: \(temp3.size), \(temp3.tipoMasa), \(temp3.tipoQueso)" )
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flavors.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if arr.count < 5{
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.Checkmark
            let row = indexPath.row
            arr.insert(flavors[row], atIndex: 0)
            print(arr)
            let multiLineString = arr.joinWithSeparator(", ")
            flavorLabel.text = multiLineString
        }else{
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
            let alertController = UIAlertController(title: "Atención!", message:
                "Pizza limitada a 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
            self.presentViewController(alertController, animated: true, completion: nil)
        
        }

    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = UITableViewCellAccessoryType.None
        let row = indexPath.row
        if arr.isEmpty{
            print("Empty array")
        }else{
            let index = arr.indexOf(flavors[row])
            arr.removeAtIndex(index!)
            print(arr)
            let multiLineString = arr.joinWithSeparator(", ")
            flavorLabel.text = multiLineString
            
        }
        
        
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! flavorTableViewCell
        let row = indexPath.row
        cell.textLabel?.text = flavors[row]
        
        
        return cell
    }
    
    
    
    @IBAction func paso4Button() {
        temp3.ingredienteExtra = arr
        
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let paso4 = temp3
        let sigVista = segue.destinationViewController as! orderViewController
        sigVista.temp4 = paso4
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
