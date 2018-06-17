import Foundation
import UIKit


enum ___Template___Segue {
    case mock
}

class ___Template___Router: MVVM_Router {
    typealias SourceViewController = ___Template___ViewController
    typealias RouterSegue = ___Template___Segue
    
    func perform(_ segue: RouterSegue, from source: SourceViewController) {
        switch segue {
        case .mock: print("")
//            let vc = DefaultLoginRouter.makeDummyViewController(withTitle: "Forgot Password")
//            source.navigationController?.pushViewController(vc, animated: true)
        }
    }
}
