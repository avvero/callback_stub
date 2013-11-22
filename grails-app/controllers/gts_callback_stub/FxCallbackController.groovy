package gts_callback_stub

class FxCallbackController {

    def index() {
        Map headers = [:]
        GTSRequest gtsRequest = new GTSRequest(params : params, headers: headers);
        request.getHeaderNames().each {it->
            def header = request.getHeader(it)
            headers.put(it, header)
        }
        gtsRequest.save()
    }

    def list() {
        def list = GTSRequest.findAll().sort{a, b -> b.id - a.id }
        render (view: "list", model: [
                list: list
        ])
    }
}
