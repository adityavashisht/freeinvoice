package freeinvoice

import grails.converters.JSON

class AjaxController {

    def invoiceService

    def index() {

    }

    def ajax() {
        Invoice invoice = new Invoice()
        invoice.id = 2
        invoice.amount = 2000.00
        invoice.sequenceNumber = "INV-1"

        render invoice as JSON
    }

    def list() {
        def items = invoiceService.getAll()

        render items as JSON
    }


}
