import Foundation
import UIKit
import MyCustomersCore

class ListCustomersDataSource: NSObject, UITableViewDataSource, ListCustomersOutputPresenter {

    // MARK: Properties

    var customers: [Customer] = []
    let cellIdentifier = "CustomerCell"

    // MARK: Initializers

    override init() {
        super.init()
        let customerRepository = customerRepositoryInMemory
        ListCustomersInteractor(listCustomersOutputPresenter: self, customerRepository: customerRepository).list()
    }

    // MARK: UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: cellIdentifier)
        if let reuseCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) {
            cell = reuseCell
        }
        let customer = customers[(indexPath as NSIndexPath).row]
        cell.show(customer)
        return cell
    }

    // MARK: ListCustomersOutputPresenter

    func list(_ customers: [Customer]) {
        self.customers = customers
    }

}
