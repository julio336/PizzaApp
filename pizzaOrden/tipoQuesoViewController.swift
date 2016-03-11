//
//  tipoQuesoViewController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 08/03/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import UIKit

class tipoQuesoViewController: UIViewController {
    var temp2 = pizzaPersonalizada()

    @IBOutlet weak var quesoLabel: UILabel!
    
    
    @IBOutlet weak var quesoControlSegment: UISegmentedControl!
    
    override func viewWillAppear(animated: Bool) {
        print("Pizza: \(temp2.size), \(temp2.tipoMasa) " )
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quesoLabel.text = "Mozarela"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func quesoAction() {
        temp2.tipoQueso = quesoLabel.text!
    }
    
    @IBAction func quesoControlSegment(sender: UISegmentedControl) {
        switch quesoControlSegment.selectedSegmentIndex{
        case 0:
            quesoLabel.text = quesoControlSegment.titleForSegmentAtIndex(0)! as String
        case 1:
            quesoLabel.text = quesoControlSegment.titleForSegmentAtIndex(1)! as String
        case 2:
            quesoLabel.text = quesoControlSegment.titleForSegmentAtIndex(2)! as String
        case 3:
            quesoLabel.text = quesoControlSegment.titleForSegmentAtIndex(3)! as String
        default:
            break
        }

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let paso3 = temp2
        let sigVista = segue.destinationViewController as! extraFlavorViewController
        sigVista.temp3 = paso3
        
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
