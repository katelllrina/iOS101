//
//  Screen.swift
//  SwiftBasic
//
//  
//

import Foundation



  class Screen {
    var title: String
      
    var disableAnimation = false 
    
   required init(title: String) {
        self.title = title
    }
        convenience init() {
            self.init(title: "Default title")
    }
    
       func show() {
        print("Default screen")
    }
}


protocol Showable {
    var title: String { get set}
      
    var disableAnimation: Bool {get set}
    func show()
}


extension Showable {
    func logInfo () {
        print("Log info \(self)")
    }
}

