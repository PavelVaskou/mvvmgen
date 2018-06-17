import Foundation
import UIKit


class AuthViewController: UIViewController, MVVMViewController {
    var router: AuthRouter!
    var viewModel: AuthViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Template"
        bindViewModel()
    }
}

//MARK: User Action
extension AuthViewController {

}

//MARK: ViewModel Callbacks
extension AuthViewController {
    func bindViewModel() {
        viewModel.actionHandler = { [weak self] action in
            guard let strongSelf = self else { return }
        }
        viewModel.errorHandler = { error in
            self.showSimpleAlertView(title: "Warinig!", message: error.description)
        }
    }
}
