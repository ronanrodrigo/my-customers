import UIKit
import MyCustomersCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.tintColor = UIColor.primary
        window?.makeKeyAndVisible()

        let customersRouter: CustomersRouter = CustomersAppRouter(window: window)
        customersRouter.list()

        return true
    }

}
