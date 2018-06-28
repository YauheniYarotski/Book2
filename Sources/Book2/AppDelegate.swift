//
//  AppDelegate.swift
//  App
//
//  Created by Yauheni Yarotski on 6/14/18.
//

import Foundation

class AppDelegate {
  
  static let shared = AppDelegate()
  //  let bitfinexWs = BitfinexWs()
  let mainManager = MainManager()
  
  init() {
  }
  
  func start() {
    mainManager.start()
  }
  
}
