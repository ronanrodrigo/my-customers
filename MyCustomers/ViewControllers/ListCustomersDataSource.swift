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
        ListCustomersInteractor(listCustomersOutputPresenter: self, customerRepository: customerRepositoryStore).list()
    }

    // MARK: UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) ??
            UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: cellIdentifier)
        cell.show(customer: customers[indexPath.row])
        return cell
    }

    // MARK: ListCustomersOutputPresenter

    func list(_ customers: [Customer]) {
        self.customers = customers
    }

}
