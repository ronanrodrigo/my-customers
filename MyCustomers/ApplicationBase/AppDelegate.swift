import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()

        if let _window = window {
            let saveCustomerViewController = SaveCustomerViewController()
            let navigationController = UINavigationController()
            navigationController.viewControllers = [saveCustomerViewController]
            _window.rootViewController = navigationController
            _window.makeKeyAndVisible()
        }

        return true
    }

}
