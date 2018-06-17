import Foundation


class MainViewModel {
    
    enum Action {
        case mock
    }
    
    var actionHandler: ((Action) -> Void)?
    var errorHandler: ((Exception) -> Void)?
}
