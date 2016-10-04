import Foundation
import UIKit
import MyCustomersCore

extension UITableViewCell {

    func show(_ customer: Customer) {
        textLabel?.text = customer.name
        detailTextLabel?.text = customer.email
    }

}
