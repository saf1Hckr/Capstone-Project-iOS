//
//  ViewController.swift
//  DUA COUNTER
//
//  Created by Mubashirul Islam on 4/29/25.
//

import UIKit
import SwiftSoup

class HomeViewController: UIViewController {

    @IBOutlet weak var TasbihCounter: UIButton!
    
    @IBOutlet weak var RecentTasbih: UIButton!
    
    
    @IBOutlet weak var SalahTime: UIButton!
    
    
    @IBOutlet weak var Hadith_Quran: UIButton!
    

    
    @IBOutlet weak var TextRandom: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchHadithsFromWebsite()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTapGesture(_:)))
           view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func handleTapGesture(_ sender: UITapGestureRecognizer) {
        // Get the location of the tap
        let location = sender.location(in: view)
        
        // Check if the tap is on the right side of the screen
        if location.x > view.bounds.width / 2 {
            // Change to the next Hadith in the list
            currentHadithIndex = (currentHadithIndex + 1) % hadiths.count
            
            DispatchQueue.main.async {
                if !self.hadiths.isEmpty {
                    self.TextRandom.text = self.hadiths[self.currentHadithIndex]
                }
            }
        }
    }

    @IBAction func TasbihCounterButton(_ sender: UIButton) {
            print("Tasbih Counter Button Tapped")
            // Navigate or present new screen here

        }
        
        @IBAction func RecentTasbihButton(_ sender: UIButton) {
            print("Recent Tasbih Button Tapped")
            // Navigate or present new screen here
        }
        
        @IBAction func SalahTimeButton(_ sender: UIButton) {
            print("Salah Time Button Tapped")
            // Navigate or present new screen here
        }
        
        @IBAction func Hadith_Quran_Button(_ sender: UIButton) {
            print("Explore More Dua Button Tapped")
            // Navigate or present new screen here
        }
    
 
    var hadiths: [String] = []
    var currentHadithIndex = 0

    func fetchHadithsFromWebsite() {
        guard let url = URL(string: "https://sunnah.com/nawawi40") else {
            print("Invalid URL")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, error == nil else {
                print("Failed to fetch HTML: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            if let htmlString = String(data: data, encoding: .utf8) {
                do {
                    let document = try SwiftSoup.parse(htmlString)
                    
                    // Try to find Hadiths from the page
                    let hadithElements = try document.getElementsByClass("english_hadith_full")
                    
                    self?.hadiths = []
                    
                    for element in hadithElements {
                        let hadithText = try element.text()
                        self?.hadiths.append(hadithText)
                    }
                    
                    // Display the first Hadith initially
                    DispatchQueue.main.async {
                        if !self!.hadiths.isEmpty {
                            self?.TextRandom.text = self?.hadiths[self!.currentHadithIndex]
                        }
                    }
                    
                } catch {
                    print("Failed to parse HTML: \(error.localizedDescription)")
                }
            }
        }
        
        task.resume()
    }

    }
    


