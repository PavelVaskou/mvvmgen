import Foundation
import UIKit


enum AuthSegue {
    case mock
}

class AuthRouter: MVVM_Router {
    typealias SourceViewController = AuthViewController
    typealias RouterSegue = AuthSegue
    
    func perform(_ segue: RouterSegue, from source: SourceViewController) {
        switch segue {
        case .mock: print("")
//            let vc = DefaultLoginRouter.makeDummyViewController(withTitle: "Forgot Password")
//            source.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
