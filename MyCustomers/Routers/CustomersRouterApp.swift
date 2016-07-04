import Foundation
import UIKit
import MyCustomersCore

class CustomersRouterApp: UINavigationController, CustomersRouter {

    // MARK: Properties

    var window: UIWindow?
    var listCustomersViewController: ListCustomersViewController?

    // MARK: Initializers

    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
    }

    // MARK: CustomersRouter

    func list() {
        listCustomersViewController = ListCustomersViewController()
        if let listCustomersViewController = listCustomersViewController {
            listCustomersViewController.navigationItem.title = "Customers"
            let newCustomerButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(new))
            listCustomersViewController.navigationItem.rightBarButtonItem = newCustomerButton
            viewControllers = [listCustomersViewController]
        }
        if let window = window {
            window.rootViewController = self
        }
    }

    func new() {
        let newCustomerViewController = NewCustomerViewController()
        newCustomerViewController.navigationItem.title = "New customer"
        let createCustomerButton = UIBarButtonItem(
            barButtonSystemItem: .Done, target: newCustomerViewController,
            action: #selector(NewCustomerViewController.didTouchAtSaveCustomer))
        newCustomerViewController.navigationItem.rightBarButtonItem = createCustomerButton
        pushViewController(newCustomerViewController, animated: true)
    }

    func backToList() {
        if let listCustomersViewController = listCustomersViewController {
            popToViewController(listCustomersViewController, animated: true)
        }
    }

}
