//
//  CountdownTimer.swift
//  DesignPatternObserverExample
//
//  Created by Ihor Myroniuk on 5/31/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import Foundation

protocol RandomIntegerGenerator: class {
  func start()
  func stop()
  func addRandomIntegerGeneratorObserver(_ observer: RandomIntegerGeneratorObserver)
  func removeRandomIntegerGeneratorObserver(_ observer: RandomIntegerGeneratorObserver)
}
