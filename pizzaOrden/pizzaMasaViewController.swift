//
//  pizzaMasaViewController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 08/03/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import UIKit

class pizzaMasaViewController: UIViewController {
    var temp = pizzaPersonalizada()

    @IBOutlet weak var masaTypeLabel: UILabel!
    
    
    @IBOutlet weak var masaControlSegment: UISegmentedControl!
    
    @IBAction func masaTypeAction(sender: UISegmentedControl) {
        switch masaControlSegment.selectedSegmentIndex{
        case 0:
            masaTypeLabel.text = masaControlSegment.titleForSegmentAtIndex(0)! as String
        case 1:
            masaTypeLabel.text = masaControlSegment.titleForSegmentAtIndex(1)! as String
        case 2:
            masaTypeLabel.text = masaControlSegment.titleForSegmentAtIndex(2)! as String
        default:
            break
        }
        
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        masaTypeLabel.text = "Delgada"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        print(temp.size)
        
    }
    
    
    @IBAction func masaAction() {
        temp.tipoMasa = masaTypeLabel.text!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let paso2 = temp
        let sigVista = segue.destinationViewController as! tipoQuesoViewController
        sigVista.temp2 = paso2
        
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
