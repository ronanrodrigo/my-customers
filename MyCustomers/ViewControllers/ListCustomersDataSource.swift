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
        let customerRepository = CustomerRepositoryInMemory()
        ListCustomersInteractor(listCustomersOutputPresenter: self, customerRepository: customerRepository).list()
    }

    // MARK: UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdentifier)
        if let reuseCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) {
            cell = reuseCell
        }
        let customer = customers[indexPath.row]
        cell.show(customer)
        return cell
    }

    // MARK: ListCustomersOutputPresenter

    func list(customers: [Customer]) {
        self.customers = customers
    }

}
