//
//  RIGOView.swift
//  DesignPatternObserverExample
//
//  Created by Ihor Myroniuk on 5/31/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import UIKit

class RIGOView: UIView, RandomIntegerGeneratorObserver {
  
  func randomIntegerGenerator(_ randomIntegerGenerator: RandomIntegerGenerator, didGenerateRandomInteger integer: Int) {
    backgroundColor = integer > 0 ? .green : .red
  }
  
}
