//
//  ViewController.swift
//  DesignPatternObserverExample
//
//  Created by Ihor Myroniuk on 5/31/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // MARK: Data
  
  private let randomIntegerGenerator = RandomIntegerGeneratorAnyPositiveInteger()
  private let logger = Logger()
  
  // MARK: Elements
  
  @IBOutlet weak var runButton: UIButton!
  @IBOutlet weak var stopButton: UIButton!
  @IBOutlet weak var observerLabel: RIGOLabel!
  @IBOutlet weak var observerView: RIGOView!
  @IBOutlet weak var observerButton: RIGOButton!

  // MARK: Events
  
  override func viewDidLoad() {
    super.viewDidLoad()
    randomIntegerGenerator.addRandomIntegerGeneratorObserver(logger)
    randomIntegerGenerator.addRandomIntegerGeneratorObserver(observerLabel)
    randomIntegerGenerator.addRandomIntegerGeneratorObserver(observerView)
    randomIntegerGenerator.addRandomIntegerGeneratorObserver(observerButton)
  }
  
  @IBAction private func runButtonTouchUpInside(_ sender: UIButton) {
    randomIntegerGenerator.start()
    runButton.isHidden = true
    stopButton.isHidden = false
  }
  
  @IBAction private func stopButtonTouchUpInside(_ sender: UIButton) {
    randomIntegerGenerator.stop()
    runButton.isHidden = false
    stopButton.isHidden = true
  }
  
  
}

