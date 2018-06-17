import Foundation
import UIKit


class ___Template___ViewController: UIViewController, MVVMViewController {
    var router: ___Template___Router!
    var viewModel: ___Template___ViewModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Template"
        bindViewModel()
    }
}

//MARK: User Action
extension ___Template___ViewController {

}

//MARK: ViewModel Callbacks
extension ___Template___ViewController {
    func bindViewModel() {
        viewModel.actionHandler = { [weak self] action in
            guard let strongSelf = self else { return }
        }
        viewModel.errorHandler = { error in
            self.showSimpleAlertView(title: "Warinig!", message: error.description)
        }
    }
}
