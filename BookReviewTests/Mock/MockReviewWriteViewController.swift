//
//  MockReviewWriteViewController.swift
//  BookReviewTests
//
//  Created by Joseph Cha on 2022/08/01.
//

import Foundation

@testable import BookReview

final class MockReviewWriteViewController: ReviewWriteProtocol {
    var isCalledSetupNavigationBar: Bool = false
    var isCalledShowCloseAlertController: Bool = false
    var isCalledClose: Bool = false
    var isCalledSetUpViews: Bool = false
    var isCalledPresentToSearchBookViewController: Bool = true
    var isCalledUpdateView: Bool = true
    
    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }
    
    func showCloseAlertController() {
        isCalledShowCloseAlertController = true
    }
    
    func close() {
        isCalledClose = true
    }
    
    func setupViews() {
        isCalledSetUpViews = true
    }
    
    func presentToSearchBookViewController() {
        isCalledPresentToSearchBookViewController = true
    }
    
    func updateView(title: String, imageURL: URL?) {
        isCalledUpdateView = true
    }
}
