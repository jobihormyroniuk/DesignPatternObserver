//
//  RandomIntegerGeneratorAnyPositiveInteger.swift
//  DesignPatternObserverExample
//
//  Created by Ihor Myroniuk on 5/31/19.
//  Copyright © 2019 Ihor Myroniuk. All rights reserved.
//

import Foundation

class RandomIntegerGeneratorAnyPositiveInteger: RandomIntegerGenerator {
  
  private var randomIntegerGeneratorObservers = NSHashTable<AnyObject>.weakObjects()
  
  private var timer: Timer?
  
  private func generateRandomInteger() {
    let integer = Int.random(in: 1...Int.max)
    for object in randomIntegerGeneratorObservers.allObjects {
      guard let randomIntegerGenerator = object as? RandomIntegerGeneratorObserver else { continue }
      randomIntegerGenerator.randomIntegerGenerator(self, didGenerateRandomInteger: integer)
    }
  }
  
  // MARK: RandomIntegerGenerator
  
  func start() {
    timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] (timer) in
      self?.generateRandomInteger()
    })
  }
  
  func stop() {
    timer?.invalidate()
    timer = nil
  }
  
  func addRandomIntegerGeneratorObserver(_ observer: RandomIntegerGeneratorObserver) {
    randomIntegerGeneratorObservers.add(observer)
  }
  
  func removeRandomIntegerGeneratorObserver(_ observer: RandomIntegerGeneratorObserver) {
    randomIntegerGeneratorObservers.remove(observer)
  }
  
}
