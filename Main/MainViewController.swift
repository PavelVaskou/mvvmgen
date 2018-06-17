import Foundation
import UIKit


class MainViewController: UIViewController, MVVMViewController {
    var router: MainRouter!
    var viewModel: MainViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Template"
        bindViewModel()
    }
}

//MARK: User Action
extension MainViewController {

}

//MARK: ViewModel Callbacks
extension MainViewController {
    func bindViewModel() {
        viewModel.actionHandler = { [weak self] action in
            guard let strongSelf = self else { return }
        }
        viewModel.errorHandler = { error in
            self.showSimpleAlertView(title: "Warinig!", message: error.description)
        }
    }
}
