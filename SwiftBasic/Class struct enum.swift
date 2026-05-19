//
//  Class struct enum.swift
//  SwiftBasic
//
// 
import Foundation

//MARK: Class, Struct, ENUM

//public struct Comment {
//    //you can make default value
////    let id: Int = 0
////    var content: String = ""
////    var likesCount: Int = 0
//    
//    static var nextId: Int = 1
//    static let dateFormatter = DateFormatter()
//    
//    let id: Int
//    var content: String
//    var likesCount: Int {
//        didSet {
//            print("Old value = \(oldValue)")
//            print("New value = \(likesCount)")
//        }
//    }
//    var date: Date
//    let author: Author
//    var replies: [Comment]
//    //var rootComment = Comment
//    
//    var formattedDate: String {
//        return Comment.dateFormatter.string(from: date)
//    }
//    
//    init(id: Int, content: String, likesCount: Int, date: Date, author: Author, replies: [Comment]) {
//        self.id = Comment.nextId
//        Comment.nextId += 1
//        self.content = content
//        self.likesCount = likesCount
//        self.date = date
//        self.author = author
//        self.replies = replies
//    }
//    
//    mutating func like() {
//        likesCount += 1
//    }
//    
//    static func writeComment(_ content: String) {
//       let defaultAuthor = Author(id: 0, name: "Default Author")
//        _ = Comment(id: 10, content: content, likesCount: 0, date: Date(), author: defaultAuthor, replies: [])
//      
//    }
//    //loading own comment
//    
//    func remove() {
//        
//    }
//    
//    mutating func edit(_ string: String) {
//        content = string
//    }
//}

//struct Author {
//    let id: Int
//    let name: String
//}


//struct Video {
//    let id: Int
//    let media: Data
//    let author: Author
//    let comments: [Comment]
//}

let authorKate = Author(id: 1, name: "Kate")
let authorVictoria = Author(id: 2, name: "Victoria")

var firstComment = Comment(id: 1, content: "Cool video", likesCount: 0, date: Date(), author: authorKate, replies: [])
let firstCommentId = firstComment.id
let firstCommentContent = firstComment.content

let firstCommentAuthorName = firstComment.author?.name

//firstComment.author?.name
//let secondComment = Comment(content: <#T##String#>, likesCount: <#T##Int#>, date: <#T##Date#>, author: <#T##Author#>, replies: <#T##[Comment]#>)
var secondComment = Comment(id: 2, content: "Nice!", likesCount: 10, date: Date(), author: authorVictoria, replies: [])

let nextId = Comment.nextId

let firstVideo = Video(id: 1, media: Data(), author: authorKate, comments: [firstComment])


//MARK: Class

//struct Setting {
//    var theme: Theme = Theme()
//}

//class Theme {
//    var isLight = false
//}



//struct App {
//    nonisolated(unsafe) static let setting: Setting = Setting()
//    
//    func start() {
//        let mainScreen = MainScreen()
//        App.show(mainScreen)
//    }
//    static func show(_ screen:  Screen) {
//        screen.show()
//    }
//}

// class Screen {
//    var title: String
//    
//   required init(title: String) {
//        self.title = title
//    }
//        convenience init() {
//            self.init(title: "Default title")
//    }
//    
//       func show() {
//        print("Default screen")
//    }
//}

//
//class MainScreen: Screen {
//    
//    var newTitle: String
//    var date: Date
//    var videoList: [Video]
//    
//    init(date: Date) {
//        self.newTitle = "New title"
//        self.date = date
//        self.videoList = [Video(id: 1, media: Data(), author: Author(id: 1, name: "Name"), comments: [])]
//        super.init(title: "Default title")
//        
//    }
//    
//    required init(title: String) {
//        self.newTitle = "New title"
//        self.date = Date()
//        self.videoList = [Video(id: 1, media: Data(), author: Author(id: 1, name: "Name"), comments: [])]
//        super.init(title: "Default title")
//    }
//    
//    init?(videoList: [Video]) {
//        guard !videoList.isEmpty else {return nil}
//        self.videoList = videoList
//        self.newTitle = "New title"
//        self.date = Date()
//        super.init(title: "Default title")
//    }
//    
//    override func show() {
//        super.show()
//        print("Main screen")
//        print(title)
//        print(newTitle)
//        
//        let theme = App.setting.theme
//        
//        theme.isLight = true
//        print(theme.isLight)
//        
//        print(App.setting.theme.isLight)
//      
//    }
//    
//    func showVideo() {
//        let videoScreen = VideoScreen()
//        App.show(videoScreen)
//    }
//    
//}
//    
//    class VideoScreen: Screen {
//        
//    }
    
    let app = App()

//MARK: Enum



var res = Video.Quality.p2160
let res3 = Video.Quality(rawValue: 2160)
let res2 = Video.Quality.p2160


 enum NewVideo {
     indirect case long(id: Int, likesCount: Int, media: Data, recommendedVideo: NewVideo?)
    case short(id: Int)
}


let firstLongVideo = NewVideo.long(id: 1, likesCount: 0, media: Data(), recommendedVideo: nil)
let secondLondVideo = NewVideo.long(id: 1, likesCount: 0, media: Data(), recommendedVideo: nil)

let comparingVideo = firstLongVideo == secondLondVideo

func testNewVideo() {
    switch firstLongVideo {
    case let .long(id, likesCount, media, recommendedVideo):
        print(id)
        print(likesCount)
    default:
        print("Default value")
    }
    
    for value in Video.Quality.allCases {
        print(value)
    }
}



//TODO: Homework!!!!

//навык проектирования
// do it with struct enum class - Telegram and Bank

// Telegram and Bank улучши типы данных где необходимы optionals, где возможно будут пустые данные и научится разворачивать optionals и уметь получать доступ через optional chaining

// из своих проектов понять какие методы будут завершаться с ошибкой - пометь эти методы как throws какие могут быть ошибки какие кейсы и прописать это все
// Protocols: Прочитать про Optional requirements, семантические требования, пустые протоколы и неявная реализация, Copyable, Sendable, BitwiseCopyble
// реализовать функции высшего порядка map, filter, reduce что они делают


//design Calculator, with enum struct class apperands operators
//before you need read алгоритс сортировочной станции и обратная польская запись



protocol Calculator {
    //must work with expression 7 + 8 * 2 / (4 -8 * 2) - 213
    func calculate(_ expression: String) -> String
}




//MARK: Error Handling

let app2 = App()


//MARK: Extensions

extension Double {
    var km: Double {return self * 1_000 }
    var m: Double {return self}
}

let distance = 10.km + 50.m

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        guard size > 0 else { return [] }
        var result: [[Element]] = []
        var i = startIndex
        while i < endIndex {
            var j = index( i, offsetBy: size, limitedBy: endIndex) ?? endIndex
            result.append(Array(self[i..<j]))
            i = j
        }
        return result
    }
}


let preChunkedArray = [1, 2, 3, 4, 5, 6]
let chunkedArray = preChunkedArray.chunked(into: 2)

//let quality1 = Video.Quality.p2160

//MARK: Protocols


extension NewVideo: Equatable {

    static func == (lhs: Self, rhs: Self) -> Bool {
        switch(lhs, rhs ) {
        case let (.long(lhsId, lhsLikesCount, lhsMedia, lhsRecommenedVideo), .long(rhsId, rhsLikedCount, rhsmedia, rhsRecommendedVideo)):
            return lhsId == rhsId && lhsMedia == rhsmedia && lhsLikesCount == rhsLikedCount && lhsRecommenedVideo == rhsRecommendedVideo
        case let (.short(lhsId), .short(rhsId)):
            return lhsId == rhsId
        default:
            return false
        }
    }
}

// Error, Identifiable, CaseIterable,  CustomStringConvertable

protocol Foo: Codable {
    func doSomithing()
}

protocol Bar: Foo, AnyObject {
    
}

struct TestStruct: Foo {
    func doSomithing() {
        
    }
}

class TestClass: Bar {
    func doSomithing() {
    }
}
let testStruct = TestStruct()
let castResult = testStruct is Foo


//MARK: generics

enum NationalOptional<Value>: ExpressibleByNilLiteral {
    init(nilLiteral: ()) {
        self = .none
    }
    case some(Value)
    case none
}

extension NationalOptional: ExpressibleByIntegerLiteral where Value == Int {
    init(integerLiteral value: Int) {
        self = .some(value)
    }
    
    
}

extension NationalOptional: Equatable where Value: Equatable {
    static func == (lhs: NationalOptional<Value>, rhs: NationalOptional<Value>) -> Bool {
        switch (lhs, rhs) {
        case let (.some(lhsValue), .some(rhsValue)):
            return lhsValue == rhsValue
        case (.none, .none):
            return true
        default:
            return false
        }
    }
}

let someOptional = NationalOptional.some(12)
let someOptionalSecond = NationalOptional.some("123")
let someOptionalThird = NationalOptional<Int>.none
let someOptionalFourth: NationalOptional<Int> = nil

let someOptionalFifth: NationalOptional<Int> = 20



//MARK: associated type

protocol SomeSequence {
    associatedtype Value: Equatable
    associatedtype SequenceSlice: SomeSequence where SequenceSlice.Value == Value
    
    func append(_ element: Value)
    
    func slice() -> SequenceSlice
}

struct SomeArray: SomeSequence {
    
    func append(_ element: Int) {
        
    }
    
    func slice() ->  SomeArray {
        return SomeArray()
    }
    
}

struct SomeSet<Element: Equatable>: SomeSequence {
    func append(_ element: Element) {
        
    }
    
    func slice() ->  SomeSet<Element> {
        return SomeSet<Element>()
    }
    
}


let myArray = SomeArray()


let mySet = SomeSet<String>()


//MARK: Opaque types
//Opaque (some) = непрозрачный, Ты не видишь настоящий тип.Но Swift видит.

protocol Shape: Equatable {
    var boundingBox: CGRect {get set}
    init()
}

struct Square: Shape {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.boundingBox.size.width == rhs.boundingBox.size.width && lhs.boundingBox.size.height == rhs.boundingBox.size.height
    }
    var boundingBox = CGRect ()
}

struct Triangle: Shape {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.boundingBox.size.width == rhs.boundingBox.size.width && lhs.boundingBox.size.height == rhs.boundingBox.size.height
    }
    var boundingBox = CGRect ()
}

struct AnyCanvas {
    func getCurrentShape() -> any Shape {
        return Bool.random() ? Square() : Triangle()
    }
}

struct SomeCanvas {
    func getCurrentShape() -> some Shape {
        return Square()
    }
}

struct GenericCanvas {
    func getCurrentShape<T: Shape>() -> T {
        return T()
    }
    
    func append(_ element: some Shape) {
        
    }
}

let canvas1 = AnyCanvas()
let shape1 = canvas1.getCurrentShape()
let shape1Copy = canvas1.getCurrentShape()

let canvas2 = SomeCanvas()
//let shape2 = canvas2.getCurrentShape()
//let shape2Copy = canvas2.getCurrentShape()



let canvas3 = GenericCanvas()
let shape3: Square = canvas3.getCurrentShape()
let shape3Copy: Square = canvas3.getCurrentShape()
//shape3 == shape3Copy

let shapeArray: [any Shape] = [shape1, shape1Copy, shape3]

//MARK: ARC

//MARK: ARC Closures
