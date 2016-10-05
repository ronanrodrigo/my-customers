import UIKit
import MyCustomersCore

protocol NewCustomerForm {
    var enteredName: String? { get }
    var enteredEmail: String? { get }
    var enteredPhone: String? { get }
    var enteredAddress: String? { get }
}

class NewCustomerViewController: UIViewController, NewCustomerForm {

    // MARK: Outlets

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var address: UITextField!

    // MARK: NewCustomerForm

    public var enteredName: String? { return name.text }
    public var enteredEmail: String? { return email.text }
    public var enteredPhone: String? { return phone.text }
    public var enteredAddress: String? { return address.text }

    // MARK: Events

    func didTouchAtSaveCustomer() {
        CreateCustomerInputPresenterApp(newCustomerForm: self).createCustomer()
    }

}
