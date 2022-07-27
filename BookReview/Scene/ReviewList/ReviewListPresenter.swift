//
//  ReviewListPresenter.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/20.
//

import Kingfisher
import UIKit

protocol ReviewListProtocol {
    func setupNavigationBar()
    func setupViews()
    func presentToReviewWriteViewController()
    func reloadTableView()
}

final class ReviewListPresenter: NSObject {
    private let viewController: ReviewListProtocol
    private let userDefaultsManager = UserDefaultsManager()
    
    private var reviewList: [BookReview] = []
    
    init(viewController: ReviewListProtocol) {
        self.viewController = viewController
        
    }
    
    func viewDidLoad() {
        viewController.setupNavigationBar()
        viewController.setupViews()
    }
    
    func viewWillAppear() {
        // TODO: UserDefaults 내용 업데이트하기
        reviewList = userDefaultsManager.getReviews()
        viewController.reloadTableView()
    }
    
    func didTapRightBarButtonItem() {
        viewController.presentToReviewWriteViewController()
    }
}

extension ReviewListPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviewList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        let review = reviewList[indexPath.row]
        cell.textLabel?.text = review.title
        cell.detailTextLabel?.text = review.content
        cell.imageView?.kf.setImage(with: review.imageURL, placeholder: .none, completionHandler: { _ in
            cell.setNeedsLayout()
        })
        
        cell.selectionStyle = .none
        
        return cell
    }
}
