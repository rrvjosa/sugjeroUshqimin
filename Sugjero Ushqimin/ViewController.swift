//
//  ViewController.swift
//  Sugjero Ushqimin
//
//  Created by Rinor Bytyci on 5/6/19.
//  Copyright © 2019 Rinor Bytyci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var labelRezultati: UILabel!
    
    var ushqimet:[String] = ["pizza", "burger", "doner", "pasta", "steak"]
    var cmimet:[String:Double] = ["pizza": 3.5, "burger": 1.5, "doner": 1.5, "pasta": 4.0, "steak": 7.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelRezultati.text = "Shtyp butonin sugjero"
    }

    @IBAction func btnSugjero(_ sender: Any) {
        
        let numriRandom:Int = Int.random(in: 0..<ushqimet.count)
        let ushqimiRandom:String = ushqimet[numriRandom]
        let cmimi:Double = cmimet[ushqimiRandom]!
        
        
        imgFoto.image = UIImage.init(named: ushqimiRandom)
        labelRezultati.text = "Ushqimi i rekomaduar per sot eshte \(ushqimiRandom) dhe kushton \(cmimi) EURO"
        
    }
    
}

