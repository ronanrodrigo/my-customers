import UIKit
import MyCustomersCore

let customerRepositoryStore = CustomerRepositoryStore()
var customersAppRouter: CustomersRouterApp?

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.tintColor = UIColor.primary
        window?.makeKeyAndVisible()

        customersAppRouter = CustomersRouterApp(window: window)
        if let customersAppRouter = customersAppRouter {
            customersAppRouter.list()
        }

        return true
    }

}
