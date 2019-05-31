//
//  RIGOButton.swift
//  DesignPatternObserverExample
//
//  Created by Ihor Myroniuk on 5/31/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import UIKit

class RIGOButton: UIButton, RandomIntegerGeneratorObserver {
  
  func randomIntegerGenerator(_ randomIntegerGenerator: RandomIntegerGenerator, didGenerateRandomInteger integer: Int) {
    isEnabled = integer % 2 == 0 ? true : false
  }
  
}
