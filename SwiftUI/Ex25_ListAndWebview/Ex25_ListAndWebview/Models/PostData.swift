//
//  PostData.swift
//  Ex25_ListAndWebview
//
//  Created by tjoeun on 2023/01/14.
//

import Foundation

//Decodable : JSON 객체 매칭이 가능한 객체라는 뜻
//Identifiable : 단일 ID를 사용하는 객체라는 뜻
//   : 리스트 객체로 사용시 필수!
struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
