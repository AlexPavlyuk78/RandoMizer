//
//  SettingsViewController.swift
//  RandoMizer
//
//  Created by Alex Pavlyuk on 2/2/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    
    @IBOutlet var maximumValueTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func cancelButtonPressed() {
        
        dismiss(animated: true)
    }
}
