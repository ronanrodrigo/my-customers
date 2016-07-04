import UIKit
import MyCustomersCore

class NewCustomerViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var address: UITextField!

    // MARK: UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    func didTouchAtSaveCustomer() {
        let createCustomerOutputPresenterApp: CreateCustomerOutputPresenterApp =
            CreateCustomerOutputPresenterApp(newCustomerViewController: self)
        let createCustomerInputPresenterApp: CreateCustomerInputPresenter =
            CreateCustomerInputPresenterApp(newCustomerViewController: self)
        createCustomerInputPresenterApp.createCustomer(createCustomerOutputPresenterApp)
    }

}
