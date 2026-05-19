//
//  MainScreen.swift
//  SwiftBasic
//
// 
 
import Foundation


class MainScreen: Screen, Showable {
    
    var newTitle: String
    var date: Date
    var videoList: [Video]
    
    init(date: Date) {
        self.newTitle = "New title"
        self.date = date
        self.videoList = [Video(id: 1, media: Data(), author: Author(id: 1, name: "Name"), comments: [])]
        super.init(title: "Default title")
        
    }
    
    required init(title: String) {
        self.newTitle = "New title"
        self.date = Date()
        self.videoList = [Video(id: 1, media: Data(), author: Author(id: 1, name: "Name"), comments: [])]
        super.init(title: "Default title")
    }
    
    init?(videoList: [Video]) {
        guard !videoList.isEmpty else {return nil}
        self.videoList = videoList
        self.newTitle = "New title"
        self.date = Date()
        super.init(title: "Default title")
    }
    
    override func show() {
        super.show()
        disableAnimation = true
        defer {
            disableAnimation = false
        }
        print("Main screen")
        print(title)
        print(newTitle)
        
        let theme = App.setting.theme
        
        theme.isLight = true
        print(theme.isLight)
        
        print(App.setting.theme.isLight)
        logInfo()
        
        
      
    }
    
    func showVideo() {
        let videoScreen = VideoScreen()
        App.show(videoScreen)
    }
    
}
