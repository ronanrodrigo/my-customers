import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)

        if let window = window {
            let listCustomersViewController = ListCustomersViewController()
            let navigationController = UINavigationController()
            navigationController.viewControllers = [listCustomersViewController]
            window.rootViewController = navigationController
            window.backgroundColor = UIColor.whiteColor()
            window.tintColor = UIColor.primary
            window.makeKeyAndVisible()
        }

        return true
    }

}
