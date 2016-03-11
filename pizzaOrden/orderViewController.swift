//
//  orderViewController.swift
//  pizzaOrden
//
//  Created by Julio Ahuactzin on 10/03/16.
//  Copyright © 2016 Julio Ahuactzin. All rights reserved.
//

import UIKit

class orderViewController: UIViewController {
    
    var temp4 = pizzaPersonalizada()
    var arr = [String]()

    
    @IBOutlet weak var sizeLabel: UILabel!
    
    @IBOutlet weak var masaLabel: UILabel!
    
    @IBOutlet weak var quesoLabel: UILabel!
    
    @IBOutlet weak var flavorsLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        print("Pizza: \(temp4.size), \(temp4.tipoMasa), \(temp4.tipoQueso), \(temp4.ingredienteExtra)" )
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        sizeLabel.text = ("Tamaño: \(temp4.size)")
        masaLabel.text = ("Tipo de masa: \(temp4.tipoMasa)")
        quesoLabel.text = ("Tipo de queso: \(temp4.tipoQueso)")
        let tempString = temp4.ingredienteExtra as NSArray as! [String]
        let multiLineString = tempString.joinWithSeparator(", ")
        flavorsLabel.text = ("Ingredientes: \(multiLineString)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
