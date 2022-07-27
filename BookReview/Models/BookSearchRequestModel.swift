//
//  BookSearchRequestModel.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/26.
//

import Foundation

struct BookSearchRequestModel: Codable {
    /// 검색할 책 키워드
    let query: String
}
