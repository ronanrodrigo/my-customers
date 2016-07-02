import Foundation
import UIKit
import MyCustomersCore

class CustomersAppRouter: UINavigationController, CustomersRouter {

    // MARK: Properties

    var window: UIWindow?

    // MARK: Initializers

    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
    }

    // MARK: CustomersRouter

    func list() {
        let listCustomersViewController = ListCustomersViewController()
        listCustomersViewController.navigationItem.title = "Customers"
        let addCustomerButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(new))
        listCustomersViewController.navigationItem.rightBarButtonItem = addCustomerButton
        viewControllers = [listCustomersViewController]
        if let window = window {
            window.rootViewController = self
        }
    }

    func new() {
        let saveCustomerViewController = SaveCustomerViewController()
        saveCustomerViewController.navigationItem.title = "New customer"
        pushViewController(saveCustomerViewController, animated: true)
    }

}
