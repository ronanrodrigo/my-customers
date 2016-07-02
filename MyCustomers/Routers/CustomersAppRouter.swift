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
            navigationController.viewControllers = [ListCustomersViewController()]
            window.rootViewController = navigationController
        }
    }

}
