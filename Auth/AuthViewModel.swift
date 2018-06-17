import Foundation


class AuthViewModel {
    
    enum Action {
        case mock
    }
    
    var actionHandler: ((Action) -> Void)?
    var errorHandler: ((Exception) -> Void)?
}
