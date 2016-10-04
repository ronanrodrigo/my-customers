import UIKit
import MyCustomersCore

let customerRepositoryStore = CustomerRepositoryStore()
var customersAppRouter: CustomersRouterApp?

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        window?.tintColor = #colorLiteral(red: 0.7660271525, green: 0.1211866513, blue: 0.3483361006, alpha: 1)
        window?.makeKeyAndVisible()

        customersAppRouter = CustomersRouterApp(window: window)
        if let customersAppRouter = customersAppRouter {
            customersAppRouter.list()
        }

        return true
    }

}
