//
//  App.swift
//  SwiftBasic
//
// 
//

import Foundation

protocol AppDelegate {
    func didStart()
}

class SomeDelegate: AppDelegate {
    func didStart() {
        print("App started")
    }
}
public struct App {
    nonisolated(unsafe) static let setting: Setting = Setting()
    
    var delegate: AppDelegate?
    
   public func start() {
        let mainScreen = MainScreen()
        App.show(mainScreen)
       
       let videoService = VideoService()
       do {
           try videoService.load(id: 1) { data in throw PresentError.present }
       } catch VideoServiceError.network {
           print("Network")
       } catch {
           
       }
       
       delegate?.didStart()
    }
    static func show(_ screen: Showable) {
        screen.show()
    }
    
    public init() {
        
    }
}


class VideoService {
    func load(id: Int, comletion: (Data) throws -> Void) rethrows {
     try comletion(Data())
    }
}



enum VideoServiceError: Error {
    case network
    case parsing
}

enum PresentError: Error {
    case present
}
