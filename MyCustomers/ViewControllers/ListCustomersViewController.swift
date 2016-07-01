import UIKit

class ListCustomersViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet weak var tableView: UITableView!

    // MARK: Properties

    var customersDataSource: ListCustomersDataSource?

    // MARK: UIView

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
