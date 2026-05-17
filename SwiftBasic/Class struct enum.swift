//
//  Class struct enum.swift
//  SwiftBasic
//
//  Created by Ekaterina Kovanikova on 06/05/2026.
//
import Foundation

//MARK: Class, Struct, ENUM

struct Comment {
    //you can make default value
//    let id: Int = 0
//    var content: String = ""
//    var likesCount: Int = 0
    
    static var nextId: Int = 1
    static let dateFormatter = DateFormatter()
    
    let id: Int
    var content: String
    var likesCount: Int {
        didSet {
            print("Old value = \(oldValue)")
            print("New value = \(likesCount)")
        }
    }
    var date: Date
    let author: Author
    var replies: [Comment]
    //var rootComment = Comment
    
    var formattedDate: String {
        return Comment.dateFormatter.string(from: date)
    }
    
    init(id: Int, content: String, likesCount: Int, date: Date, author: Author, replies: [Comment]) {
        self.id = Comment.nextId
        Comment.nextId += 1
        self.content = content
        self.likesCount = likesCount
        self.date = date
        self.author = author
        self.replies = replies
    }
    
    mutating func like() {
        likesCount += 1
    }
    
    static func writeComment(_ content: String) {
       let defaultAuthor = Author(id: 0, name: "Default Author")
        _ = Comment(id: 10, content: content, likesCount: 0, date: Date(), author: defaultAuthor, replies: [])
      
    }
    //loading own comment
    
    func remove() {
        
    }
    
    mutating func edit(_ string: String) {
        content = string
    }
//    init(content: String, likesCount: Int, date: Date, author: Author, replies: [Comment]) {
//        self.id = 1
//        self.content = content
//        self.likesCount = likesCount
//        self.date = date
//        self.author = author
//        self.replies = replies
//    }
}

struct Author {
    let id: Int
    let name: String
}


struct Video {
    let id: Int
    let media: Data
    let author: Author
    let comments: [Comment]
}

let authorKate = Author(id: 1, name: "Kate")
let authorVictoria = Author(id: 2, name: "Victoria")

var firstComment = Comment(id: 1, content: "Cool video", likesCount: 0, date: Date(), author: authorKate, replies: [])
let firstCommentId = firstComment.id
let firstCommentContent = firstComment.content

let firstCommentAuthorName = firstComment.author.name
//let secondComment = Comment(content: <#T##String#>, likesCount: <#T##Int#>, date: <#T##Date#>, author: <#T##Author#>, replies: <#T##[Comment]#>)
var secondComment = Comment(id: 2, content: "Nice!", likesCount: 10, date: Date(), author: authorVictoria, replies: [])

let nextId = Comment.nextId

let firstVideo = Video(id: 1, media: Data(), author: authorKate, comments: [firstComment])


//MARK: Class

struct App {
    func start() {
        let mainScreen = MainScreen()
        App.show(mainScreen)
    }
    static func show(_ screen:  Screen) {
        screen.show()
    }
}

class Screen {
    var title: String
    
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


class MainScreen: Screen {
    
    var newTitle: String
    var date: Date
    var videoList: [Video]
    
//override init(title: String) {
//    newTitle = "12341123344"
//    date = Date()
//    super.init(title: title)
     
    
    
//    init() {
//        newTitle = "12121212"
//        date = Date()
//        super.init(title: "12345")
//        self.title = "12345"
//        show()
//    }

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


override func show() {
    super.show()
    print("Main screen")
    print(title)
    print(newTitle)
}
}

class VideoScreen: Screen {
    
}

let app = App()
