//
//  MockReviewListViewController.swift
//  BookReviewTests
//
//  Created by Joseph Cha on 2022/08/01.
//

import Foundation

@testable import BookReview

final class MockReviewListViewController: ReviewListProtocol {
    var isCalledSetupNavigationBar = false
    var isCalledSetupViews = false
    var isCaleedPresentToReviewWriteViewController = false
    var isCalledReloadTableView = false
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func setupViews() {
        isCalledSetupViews = true
    }
    
    func presentToReviewWriteViewController() {
        isCaleedPresentToReviewWriteViewController = true
    }
    
    func reloadTableView() {
        isCalledReloadTableView = true
    }
}
