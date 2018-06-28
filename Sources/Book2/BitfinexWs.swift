//
//  BitfinexWs.swift
//  App
///Users/yauheniyarotski/Downloads/data.json
//  Created by Yauheni Yarotski on 6/14/18.
//


import ObjectMapper


class BitfinexRequest: Mappable {
  var event: String = "subscribe"
  var channel: String = "book"
  var symbol: String = "BTCUSD"
  var prec: String = "P0"
  
  init() {
  }
  
  required init?(map: Map) {
  }
  
  func mapping(map: Map) {
    event             <- map["event"]
    channel           <- map["channel"]
    symbol            <- map["symbol"]
    prec              <- map["prec"]
  }
  
}


class BitfinexPingRequest: Mappable {
  var event: String = "ping"
  init() {
  }
  required init?(map: Map) {
  }

  func mapping(map: Map) {
    event             <- map["event"]
  }

}


//final class BitfinexPingRequest: Codable {
//  var event: String
//
//  init(event: String) {
//    self.event = event
//  }
//}

//extension BitfinexPingRequest: Content {}
//extension User: Migration {}



//class BitfinexWs {
//
//  var books =[String: PairBook]()
//
//  func start(_ app: Application, onResponse:@escaping ((_ books: [String: PairBook])->())) {
//
//    _ = HTTPClient.webSocket(scheme: .wss, hostname: "api.bitfinex.com", path: "/ws/2", on: app).map{ ws in
////      let payload = "{\"event\":\"ping\"}"
//      let payload = BitfinexPingRequest().toJSONString()!
//      print(payload)
//
//      ws.onText { ws, text in
//        print("Text: ", text)
//      }
//      ws.onError{ (ws, error) in
//        print("Error: ", error)
//      }
//      ws.onCloseCode({ (wsCode) in
//        print("close: ", wsCode)
//      })
//      ws.send(payload)
//      }
//  }
//

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
//  func add(newBook: BinanceBookForPair) {
//
//    if var book = self.books[newBook.symbol] {
//
//      for ask in newBook.asks {
//        let price = ask.key
//        let quantity = ask.value
//        quantity.double == 0 ? (book.asks[price] = nil) : (book.asks[price] = quantity)
//      }
//
//      for bid in newBook.bids {
//        let price = bid.key
//        let quantity = bid.value
//        quantity.double == 0 ? (book.bids[price] = nil) : (book.bids[price] = quantity)
//      }
//
//      self.books[newBook.symbol] = book
//
//    } else {
//      var pairBook = PairBook()
//      pairBook.symbol = newBook.symbol
//      pairBook.asks = newBook.asks
//      pairBook.bids = newBook.bids
//      self.books[newBook.symbol] = pairBook
//    }
//
//  }
  
  
//}
