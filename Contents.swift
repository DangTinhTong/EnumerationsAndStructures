//: Playground - noun: a place where people can play
// Tống Đăng Tình
import UIKit

//var str = "Hello, playground"
// Use enum to create an enumeratio
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
if let convertedRank = Rank(rawValue: 3)  {
    _ = convertedRank.simpleDescription()

}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() ->String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
    
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()

//
enum ServerResponse {
    case result(String, String)
    case failure(String)
    
}


let success = ServerResponse.result("6:00 am", "8:10 pm")
let failture = ServerResponse.failure("Out of cheese")


switch success {
case let .result (sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure.... \(message)")

}
// Use structure to create a structure. Structures support  many of the behaviors as classes
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
