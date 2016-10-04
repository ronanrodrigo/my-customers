import Foundation

public protocol CustomerRepository {
    func all() -> [Customer]
    func create(customer: Customer)
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

    open func create(customer: Customer) {
        customers.append(customer)
    }

}
