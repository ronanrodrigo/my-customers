import UIKit

class SaveCustomerViewController: UIViewController {

    @IBOutlet weak var topPosition: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        topPosition.constant = self.topLayoutGuide.length
    }

}
