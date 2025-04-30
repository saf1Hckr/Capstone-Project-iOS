//
//  ScopeViewController.swift
//  DUA APP COUNTER
//
//  Created by Mubashirul Islam on 4/30/25.
//

import UIKit

class OptionsViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var Account: UIButton!
    
    
    @IBOutlet weak var History: UIButton!
    
    
    @IBOutlet weak var Settings: UIButton!
    
    
    @IBOutlet weak var Donate: UIButton!
    
    
    @IBOutlet weak var Contact: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - IBActions
    @IBAction func Actionbutton(_ sender: UIButton) {
        print("Button One Tapped")
        // Add your action here
    }
    
    @IBAction func Histroybutton(_ sender: UIButton) {
        print("Button Two Tapped")
        // Add your action here
    }
    
    @IBAction func Settingsbutton(_ sender: UIButton) {
        print("Button Three Tapped")
        // Add your action here
    }
    
    @IBAction func Donatebutton(_ sender: UIButton) {
        print("Button Four Tapped")
        // Add your action here
    }
    
    @IBAction func Contactbutton(_ sender: UIButton) {
        print("Button Five Tapped")
        // Add your action here
    }

}
