import UIKit

protocol UserProtocol{
    
    var name: String{get}
    var lastName: String{get}
    
    func getFullyName()-> String
}

struct UserMode: UserProtocol{
    var name: String
    
    var lastName: String
    
    func getFullyName() -> String {
        return "\(name) \(lastName)"
    }
    
    
}
