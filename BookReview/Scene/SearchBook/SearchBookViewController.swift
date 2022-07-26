//
//  SearchBookViewController.swift
//  BookReview
//
//  Created by Joseph Cha on 2022/07/26.
//

import SnapKit
import UIKit

final class SearchBookViewController: UIViewController {
    private lazy var presenter = SearchBookPresenter(viewController: self)
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = presenter
        tableView.dataSource = presenter
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
}

extension SearchBookViewController: SearchBookProtocol {
    func setupViews() {
        view.backgroundColor = .systemBackground
        
        let searchController = UISearchController()
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = presenter
        
        navigationItem.searchController = searchController
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func dismiss() {
        dismiss(animated: true)
    }
}


