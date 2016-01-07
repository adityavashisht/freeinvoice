package freeinvoice

import grails.transaction.Transactional

@Transactional
class InvoiceService {

    def getAll() {
        Invoice invoice = new Invoice()
        invoice.id = 1
        invoice.amount = 2000.00
        invoice.sequenceNumber = "INV-1"

        Invoice invoiceTwo = new Invoice()
        invoiceTwo.id = 2
        invoiceTwo.amount = 2000.00
        invoiceTwo.sequenceNumber = "INV-2"

        return [invoice, invoiceTwo]
    }
}
