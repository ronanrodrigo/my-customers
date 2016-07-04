import Foundation
import UIKit
import MyCustomersCore

class CreateCustomerInputPresenterApp: CreateCustomerInputPresenter {

    var newCustomerViewController: NewCustomerViewController

    init(newCustomerViewController: NewCustomerViewController) {
        self.newCustomerViewController = newCustomerViewController
    }

    func createCustomer(createCustomerOutputPresenter: CreateCustomerOutputPresenter) {
        let interactor = CreateCustomerInteractor(
            customerRepository: customerRepositoryInMemory,
            createCustomerOutputPresenter: createCustomerOutputPresenter)
        interactor.create(generateCustomerEntity())
    }

    func generateCustomerEntity() -> Customer {
        return CustomerEntity(
            name: newCustomerViewController.name.text,
            phone: newCustomerViewController.phone.text,
            email: newCustomerViewController.email.text,
            address: newCustomerViewController.address.text)
    }

}
