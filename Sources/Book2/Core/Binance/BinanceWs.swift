//
//  bookMain.swift
//  Book
//
//  Created by Yauheni Yarotski on 6/5/18.
//

import ObjectMapper
import WebSocket
import NIO

class BinanceWs {
  
 
  
  func start(onResponse:@escaping ((_ binanceNewLevels: [String: BinanceBookForPair])->())) {
     let group = MultiThreadedEventLoopGroup(numberOfThreads: System.coreCount)
    _ = HTTPClient.webSocket(scheme: .wss, hostname: "stream.binance.com", port: 9443, path: "/ws/btcusdt@depth", on: group).map{ ws in
      ws.onText { ws, text in
        print(text)
//        let binanceBookForPair = Mapper<BinanceBookForPair>().map(JSONString: text)!
//        let binanceNewLevels = [binanceBookForPair.symbol: binanceBookForPair]
        
//        onResponse(binanceNewLevels)
      }
      ws.onError{ (ws, error) in
        print("BinanceWs error: ",error)
      }
    }
  }
}
