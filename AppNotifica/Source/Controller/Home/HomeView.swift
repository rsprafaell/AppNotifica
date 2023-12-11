//
//  HomeView.swift
//  AppNotifica
//
//  Created by IFB-BIOTIC-23 on 24/11/23.
//

import Foundation
import UIKit

/*
class HomeView: UIView {
    // MARK: - Initializers
    override init(frame: CGRect) {
        //chama o frame da superclasse
        super.init(frame: frame)
        // define a cor de fundo de acordo com o color set
        self.backgroundColor = .backgroundCollor
        
        setupVisualElement()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupVisualElement() {
     //   setupVisualElement()
    }

}
*/

class HomeView: ViewDefault {
    
    //MARK: - Closure
    
    //MARK: - Porports
    
    //MARK: - Inits
    
    var viewModel: HomeViewModel
    
    lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupVisualElement() {
        super.setupVisualElement()
        
        addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        
        setupTableView()
    }
    
    func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.ocorrencias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ocorrencia = viewModel.ocorrencias[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.text = ocorrencia.title
        
        return cell
    }
}
