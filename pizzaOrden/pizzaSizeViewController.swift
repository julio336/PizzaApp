//
//  pizzaSizeViewController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 08/03/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import UIKit

class pizzaSizeViewController: UIViewController {
    var Pizza = pizzaPersonalizada()
    
    @IBOutlet weak var pizzaSizeLabel: UILabel!
    
    @IBOutlet weak var pizzaSizeControl: UISegmentedControl!
    
    override func viewWillAppear(animated: Bool) {
        Pizza.size = "Chica"
    }
    
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch pizzaSizeControl.selectedSegmentIndex{
        case 0:
            pizzaSizeLabel.text = pizzaSizeControl.titleForSegmentAtIndex(0)! as String
        case 1:
            pizzaSizeLabel.text = pizzaSizeControl.titleForSegmentAtIndex(1)! as String
        case 2:
            pizzaSizeLabel.text = pizzaSizeControl.titleForSegmentAtIndex(2)! as String
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pizzaSizeLabel.text = "Chica"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func pasounoAction() {
        Pizza.size = pizzaSizeLabel.text!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let paso1 = Pizza
        let sigVista = segue.destinationViewController as! pizzaMasaViewController
        sigVista.temp = paso1
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
