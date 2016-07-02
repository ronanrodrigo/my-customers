import Foundation

public protocol Customer {
    var name: String? { get set }
    var phone: String? { get set }
    var email: String? { get set }
    var address: String? { get set }
}
