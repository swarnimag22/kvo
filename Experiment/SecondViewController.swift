//
//  SecondViewController.swift
//  Experiment
//
//  Created by swarnima on 07/03/17.
//  Copyright © 2017 Swarnima. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    static let storyBoardId = "secondVC"
    
    @IBOutlet var textfield: UITextField!
    
    @IBOutlet var button: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        textfield.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        
      //  let str = textField.text
       // textfield.text = "bnnbnnmb"
        
        self.textfield.resignFirstResponder()
        
        
    }

    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
        textfield.text = textField.text
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
