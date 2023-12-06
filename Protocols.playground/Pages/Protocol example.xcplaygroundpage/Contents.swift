import UIKit

protocol UserProtocol{
    var name: String{get}
    var lastName: String{get}
    
    func getFullName()-> String
}

extension UserProtocol{
    func getAge(age: Int)-> String{
        ""
    }
}

struct UserModel: UserProtocol{
    var name: String
    
    var lastName: String
    
    func getFullName() -> String {
        name+" "+lastName
    }
    
    func getAge(age: Int)-> String{
       "Edad: \(age)"
    }

}

let user = UserModel(name: "Matías", lastName: "Molina")
user.getFullName()
user.getAge(age: 36)
