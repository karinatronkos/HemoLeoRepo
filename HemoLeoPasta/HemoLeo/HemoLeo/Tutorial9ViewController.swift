//
//  Tutorial9ViewController.swift
//  HemoLeo
//
//  Created by Gabriel Oliveira on 17/11/16.
//  Copyright © 2016 Bepid. All rights reserved.
//

import UIKit

class Tutorial9ViewController: UIViewController {
    @IBOutlet weak var materiais: MateriaisView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "BG"))
        
        if UIDevice.current.modelName.contains("iPhone") {
            
            
        } else {
            
            materiais.addMateriaisAnimation()
            materiais.clipsToBounds = true
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
