import Foundation

public protocol CustomerRepository {
    func all() -> [Customer]
    func create(_ customer: Customer) -> Customer
}

open class CustomerRepositoryInMemory: CustomerRepository {

    var customers: [Customer]

    public init() {
        let customer = CustomerEntity(
            name: "Ronan Rodrigo Nunes", phone: "47 9999 9999", email: "ronan.nunes@me.com", address: "R. Minha Rua")
        self.customers = [customer]
    }

    open func all() -> [Customer] {
        return customers
    }

    open func create(_ customer: Customer) -> Customer {
        customers.append(customer)
        return customer
    }

}
