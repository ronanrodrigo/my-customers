import Foundation
import UIKit
import MyCustomersCore

class CustomersAppRouter: CustomersRouter {

    // MARK: Properties

    var window: UIWindow?
    var navigationController: UINavigationController?

    // MARK: Initializers

    convenience init(window: UIWindow?) {
        self.init()
        self.window = window
    }

    // MARK: CustomersRouter

    func list() {
        navigationController = UINavigationController()
        if let window = window, navigationController = navigationController {
            let listCustomersViewController = ListCustomersViewController()
            listCustomersViewController.navigationItem.title = "Customers"
            navigationController.viewControllers = [listCustomersViewController]
            window.rootViewController = navigationController
        }
    }

}
