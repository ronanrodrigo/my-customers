import Foundation
import UIKit

class ListCustomersDataSource: NSObject, UITableViewDataSource {

    let customers: [String] = []
    let cellIdentifier = "CustomerCell"

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdentifier)

        if let reuseCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) {
            cell = reuseCell
        }

        cell.textLabel?.text = customers[indexPath.row]

        return cell
    }

}
