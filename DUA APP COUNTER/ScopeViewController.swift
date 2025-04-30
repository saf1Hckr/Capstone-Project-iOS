//
//  ScopeViewController.swift
//  DUA APP COUNTER
//
//  Created by Mubashirul Islam on 4/30/25.
//

import UIKit

class ScopeViewController: UIViewController {
    
    @IBOutlet weak var ShortGoal: UIButton!
    
    
    @IBOutlet weak var LongGoal: UIButton!

    override func viewDidLoad(){
        
        super.viewDidLoad()
        
    }
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
           print("First Button Tapped")
           // Add your action here
       }
       
       @IBAction func secondButtonTapped(_ sender: UIButton) {
           print("Second Button Tapped")
           // Add your action here
       }
    
    
}

