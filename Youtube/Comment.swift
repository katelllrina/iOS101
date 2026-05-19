//
//  Comment.swift
//  SwiftBasic
//
//  Created by Ekaterina Kovanikova on 17/05/2026.
//

import Foundation

public struct Comment {
    //you can make default value
//    let id: Int = 0
//    var content: String = ""
//    var likesCount: Int = 0
    
   public static var nextId: Int = 1
  public static let dateFormatter = DateFormatter()
    
    public let id: Int
   public private(set) var content: String
   public var likesCount: Int {
        didSet {
            print("Old value = \(oldValue)")
            print("New value = \(likesCount)")
        }
    }
    var date: Date
   public let author: Author?
    var replies: [Comment]
    //var rootComment = Comment
    
    var formattedDate: String {
        return Comment.dateFormatter.string(from: date)
    }
    
   public init(id: Int, content: String, likesCount: Int, date: Date, author: Author, replies: [Comment]) {
        self.id = Comment.nextId
        Comment.nextId += 1
        self.content = content
        self.likesCount = likesCount
        self.date = date
        self.author = author
        self.replies = replies
    }
    
   public mutating func like() {
        likesCount += 1
    }
    
   public static func writeComment(_ content: String) {
       let defaultAuthor = Author(id: 0, name: "Default Author")
        _ = Comment(id: 10, content: content, likesCount: 0, date: Date(), author: defaultAuthor, replies: [])
      
    }
    //loading own comment
    
   public func remove() {
        
    }
    
    mutating func edit(_ string: String) {
        content = string
    }
}
