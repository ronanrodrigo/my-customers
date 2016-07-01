import UIKit

class ListCustomersViewController: UIViewController {

    // MARK: Properties

    var customersDataSource: ListCustomersDataSource?
    override func viewDidLoad() {
        super.viewDidLoad()
        configureDataSource()
    }

    // MARK: Setups

    private func configureDataSource() {
        customersDataSource = ListCustomersDataSource()
        if let customersDataSource = customersDataSource {
            tableView.dataSource = customersDataSource
        }
    }

}
