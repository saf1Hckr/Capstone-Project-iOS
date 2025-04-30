//
//  CountingViewController.swift
//  DUA APP COUNTER
//
//  Created by Mubashirul Islam on 4/30/25.
//

import UIKit

class CountingViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var retryButton: UIButton!
    
    private var words = ["ٱلْـحَـمْـدُ للهِ ", "ٱللّٰهُ أَكْبَرُ ", "سُبْحَانَ ٱللّٰهِ"]
    private var selectedWord: String = "ٱللّٰهُ أَكْبَرُ"
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        selectedWord = words[0]

        // Set up segmented control for word selection
        let segmentedControl = UISegmentedControl(items: words)
        segmentedControl.frame = CGRect(x: 50, y: 100, width: 300, height: 100)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action: #selector(wordSelectionChanged), for: .valueChanged)
        view.addSubview(segmentedControl)
        
        segmentedControl.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 20)], for: .normal)

        view.addSubview(segmentedControl)

        countLabel.text = "Count: 0"
        startButton.setTitle("Start", for: .normal)
        stopButton.setTitle("Stop", for: .normal)
    }

    @objc func wordSelectionChanged(sender: UISegmentedControl) {
        selectedWord = words[sender.selectedSegmentIndex]
        count = 0
        countLabel.text = "Count: 0"
    }

    @IBAction func startListeningTapped(_ sender: UIButton) {
        count += 1
        countLabel.text = "Count: \(count)"
    }

    @IBAction func stopListeningTapped(_ sender: UIButton) {
        showAlert(message: "Final count: \(count)")
    }

    @IBAction func retryTapped(_ sender: UIButton) {
        print("Retry tapped")
        count = 0
        countLabel.text = "Count: 0"
        retryButton.isHidden = false
        startButton.isEnabled = true
    }

    private func showAlert(message: String) {
        let alertController = UIAlertController(title: "Word Counter", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        present(alertController, animated: true)
    }
}
