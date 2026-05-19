//
//  Video.swift
//  SwiftBasic
//
// 
//
import Foundation

struct Video {
    let id: Int
    let media: Data
    let author: Author
    var comments: [Comment]
    let resolution: Quality = .p720
    
}

extension Video {
    public enum Quality: Int, CaseIterable {
        case p720 = 720
        case p1080 = 1080
        case p1440 = 1440
        case p2160 = 2160
        
        
      public  var formatedString: String {
            switch self {
            case .p720:
                return "720p"
            case .p1080:
                return "1080p"
            case .p1440:
                return "1440p"
            case .p2160:
                return "2160p"
            }
        }
        
       mutating func downgrade() {
            switch self {
            case .p1080:
                self = .p720
            case .p1440:
                self = .p1080
            case .p2160:
                self = .p1440
                
            default:
                self = .p720
            }
        }
    }
}
