//
//  CardController.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/4/23.
//

import UIKit

class CardController: UIViewController {

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(CartTableViewCell.self, forCellReuseIdentifier: CartTableViewCell.identifier)
        tableView.separatorStyle = .none
        tableView.separatorInset = .zero
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    var datas: [TableViewModels] = [
        TableViewModels(image: "sushi1", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi2", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi3", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi1", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi2", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi3", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi1", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi2", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        TableViewModels(image: "sushi3", title: "CocaCola", desc: "Size: 0.5", sena: "10 $"),
        ]
    
     
    
    private let subTotalLabel = CustomLabel(title: "Mahsulot Summasi", fontsize: 15, fontType: .regular, textColor: .black.withAlphaComponent(0.5))
    private let subTotalLabelNumber = CustomLabel(title: "8 $", fontsize: 15, fontType: .regular, textColor: .black.withAlphaComponent(0.5))
    private let deliveryLabel = CustomLabel(title: "Yezkazib Berish", fontsize: 15, fontType: .regular, textColor: .black.withAlphaComponent(0.5))
    private let deliveryLabelNumber = CustomLabel(title: "+2 $", fontsize: 15, fontType: .regular, textColor: .black.withAlphaComponent(0.5))
    private let totalLabel = CustomLabel(title: "Jami", fontsize: 18, fontType: .bold, textColor: .black)
    private let totalLabelNumber = CustomLabel(title: "10 $", fontsize: 18, fontType: .bold, textColor: .black)
    private let nextButton = CustomButton(title: "Keyingi", hasBackground: "ff8000", FontSize: 22, tintColor: "fff")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.isNavigationBarHidden = true
        self.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)

    }
    
    private func setupUI() {
        view.addSubview(nextButton)
        view.addSubview(totalLabel)
        view.addSubview(totalLabelNumber)
        view.addSubview(deliveryLabel)
        view.addSubview(deliveryLabelNumber)
        view.addSubview(subTotalLabel)
        view.addSubview(subTotalLabelNumber)
       
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        totalLabel.translatesAutoresizingMaskIntoConstraints  = false
        totalLabelNumber.translatesAutoresizingMaskIntoConstraints  = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        deliveryLabel.translatesAutoresizingMaskIntoConstraints = false
        deliveryLabelNumber.translatesAutoresizingMaskIntoConstraints =  false
        subTotalLabel.translatesAutoresizingMaskIntoConstraints = false
        subTotalLabelNumber.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
        
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: subTotalLabel.topAnchor, constant: -17),
            
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -17),
            nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            nextButton.heightAnchor.constraint(equalToConstant: 46),
            
            totalLabel.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -17),
            totalLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            totalLabel.heightAnchor.constraint(equalToConstant: 46),
            
            totalLabelNumber.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -17),
            totalLabelNumber.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            totalLabelNumber.heightAnchor.constraint(equalToConstant: 46),
            
            
            deliveryLabel.bottomAnchor.constraint(equalTo: totalLabel.topAnchor, constant: -17),
            deliveryLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            deliveryLabel.heightAnchor.constraint(equalToConstant: 46),
            
            deliveryLabelNumber.bottomAnchor.constraint(equalTo: totalLabel.topAnchor, constant: -17),
            deliveryLabelNumber.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            deliveryLabelNumber.heightAnchor.constraint(equalToConstant: 46),
            
            subTotalLabel.bottomAnchor.constraint(equalTo: deliveryLabel.topAnchor),
            subTotalLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            subTotalLabel.heightAnchor.constraint(equalToConstant: 46),
            
            subTotalLabelNumber.bottomAnchor.constraint(equalTo: deliveryLabel.topAnchor),
            subTotalLabelNumber.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            subTotalLabelNumber.heightAnchor.constraint(equalToConstant: 46),
            
        ])
        
    }
    
    @objc func nextButtonTapped() {
       let vc = AddressController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension CardController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = datas[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: CartTableViewCell.identifier, for: indexPath) as! CartTableViewCell
        cell.reload(item: model)
        cell.Background.backgroundColor = .systemBackground
        return cell
    }
    
    
}
