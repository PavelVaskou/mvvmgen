import Foundation
import UIKit


enum MainSegue {
    case mock
}

class MainRouter: MVVM_Router {
    typealias SourceViewController = MainViewController
    typealias RouterSegue = MainSegue
    
    func perform(_ segue: RouterSegue, from source: SourceViewController) {
        switch segue {
        case .mock: print("")
//            let vc = DefaultLoginRouter.makeDummyViewController(withTitle: "Forgot Password")
//            source.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
