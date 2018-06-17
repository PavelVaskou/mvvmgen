import Foundation


class ___Template___ViewModel {
    
    enum Action {
        case mock
    }
    
    var actionHandler: ((Action) -> Void)?
    var errorHandler: ((Exception) -> Void)?
}
