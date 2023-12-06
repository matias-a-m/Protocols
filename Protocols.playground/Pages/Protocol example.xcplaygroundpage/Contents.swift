import UIKit

protocol UserProtocol{
    var name: String{get}
    var lastName: String{get}
    
    func getFullName()-> String
}

struct UserMode: UserProtocol{
    var name: String
    
    var lastName: String
    
    func getFullName() -> String {
        name+" "+lastName
    }
    
    
}
