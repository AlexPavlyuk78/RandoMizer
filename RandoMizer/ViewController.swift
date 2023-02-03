//
//  ViewController.swift
//  RandoMizer
//
//  Created by Alex Pavlyuk on 2/2/23.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 8
   }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minimumValue = minimumValueLabel.text
        settingsVC.maximumValue = maximumValueLabel.text
        
    }
        
    @IBAction func getRandomNumberButtonTapped() {
     let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
     let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
    randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingVC = segue.source as? SettingsViewController else
        { return }
        minimumValueLabel.text = settingVC.minimumValueTF.text
        maximumValueLabel.text = settingVC.maximumValueTF.text
    }
}
