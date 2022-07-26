//
//  ReviewWritePresent.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/25.
//

import Foundation

protocol ReviewWriteProtocol {
    func setupNavigationBar()
    func showCloseAlertController()
    func close()
    func setupViews()
    func presentToSearchBookViewController()
}

final class ReviewWritePresent {
    private let viewController: ReviewWriteProtocol
    
    init(viewController: ReviewWriteProtocol) {
        self.viewController = viewController
    }
    
    func viewDidload() {
        viewController.setupNavigationBar()
        viewController.setupViews()
    }
    
    func didTapLeftBarButton() {
        viewController.showCloseAlertController()
    }
    
    func didTapRightBarButton() {
        // TODO: UserDefaults에 유저가 작성한 도서리뷰를 저장하기
        viewController.close()
    }
    
    func didTapBookTitleButton() {
        viewController.presentToSearchBookViewController()
    }
}
