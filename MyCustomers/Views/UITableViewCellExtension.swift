import Foundation
import UIKit
import MyCustomersCore

extension UITableViewCell {

    func show(customer: Customer) {
        textLabel?.text = customer.name
        detailTextLabel?.text = customer.email
    }

}
