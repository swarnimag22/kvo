//
//  ViewController.swift
//  Experiment
//
//  Created by swarnima on 07/03/17.
//  Copyright © 2017 Swarnima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var dataLbl: UILabel!
    @IBOutlet var proceedButton: UIButton!
    
    var vc:SecondViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        vc = self.storyboard?.instantiateViewController(withIdentifier: SecondViewController.storyBoardId) as? SecondViewController
        self.vc?.addObserver(self, forKeyPath: "textfield.text", options: .new, context: nil)

        dataLbl.text = "experiment project"
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        

    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if (keyPath == "textfield.text" ) {
            dataLbl.text = change?[.newKey] as? String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func proceedAction(_ sender: Any) {
        //let nav:UINavigationController = UINavigationController(rootViewController: self)
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: SecondViewController.storyBoardId) as? SecondViewController
//        vc?.addObserver(self, forKeyPath: "textfield.text", options: .new, context: nil)
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

}

