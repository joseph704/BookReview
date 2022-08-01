//
//  MockUserDefaultsManager.swift
//  BookReviewTests
//
//  Created by Joseph Cha on 2022/08/01.
//

import Foundation

@testable import BookReview

final class MockUserDefaultsManager: UserDefaultsManagerProtocol {
    var isCalledGetReiviews = false
    var isCalledSetReview = false
    
    func getReviews() -> [BookReview] {
        isCalledGetReiviews = true
        
        return []
    }
    
    func setReviews(_ newValue: BookReview) {
        isCalledSetReview = true
    }
    
    
}
