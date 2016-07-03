import Foundation

public struct CustomerEntity: Customer {
    public var name: String?
    public var phone: String?
    public var email: String?
    public var address: String?

    public init(name: String?, phone: String?, email: String?, address: String?) {
        self.name = name
        self.phone = phone
        self.email = email
        self.address = address
    }

    public init() {
    }

}
