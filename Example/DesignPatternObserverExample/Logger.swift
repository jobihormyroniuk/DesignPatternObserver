//
//  Logger.swift
//  DesignPatternObserverExample
//
//  Created by Ihor Myroniuk on 5/31/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import Foundation

class Logger: RandomIntegerGeneratorObserver {
  
  func randomIntegerGenerator(_ randomIntegerGenerator: RandomIntegerGenerator, didGenerateRandomInteger integer: Int) {
    debugPrint(integer)
  }
  
}
