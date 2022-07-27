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
    func updateView(title: String, imageURL: URL?)
}

final class ReviewWritePresent {
    private let viewController: ReviewWriteProtocol
    private let userDefaultsManager = UserDefaultsManager()
    
    private var book: Book?
    
    let contentsTextViewPlaceHolderText = "내용을 입력해주세요."
    
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
    
    func didTapRightBarButton(contentsText: String?) {
        // TODO: UserDefaults에 유저가 작성한 도서리뷰를 저장하기
        
        guard
            let book = book,
            let contentsText = contentsText,
            contentsText != contentsTextViewPlaceHolderText
        else { return }
        
        let bookReview = BookReview(
            title: book.title,
            imageURL: book.imageURL,
            content: contentsText
        )
        userDefaultsManager.setReviews(bookReview)

        viewController.close()
    }
    
    func didTapBookTitleButton() {
        viewController.presentToSearchBookViewController()
    }
}

extension ReviewWritePresent: SearchBookDelegate {
    func selectBook(_ book: Book) {
        self.book = book
        viewController.updateView(
            title: book.title,
            imageURL: book.imageURL
        )
    }
}
