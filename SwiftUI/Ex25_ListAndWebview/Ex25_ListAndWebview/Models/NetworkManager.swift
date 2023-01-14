//
//  NetworkManager.swift
//  Ex25_ListAndWebview
//
//  Created by tjoeun on 2023/01/14.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData() {
        //IT블로그 REST API 호출
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            //task : 백그라운드 서비스
            let task = session.dataTask(with: url) {
                (data, response, error) in
                if error == nil {
                    //통신성공!
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        //do catch문 : 예외처리
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            //메인스레드안에 접근
                            DispatchQueue.main.sync {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume() //통신을 수행한다.
        }
    }
}
