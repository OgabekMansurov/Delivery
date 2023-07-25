//
//  HomeController.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/4/23.
//

import UIKit


class HomeController: UIViewController {
    
  private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.frame = self.view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .white
        contentView.frame.size = contentSize
        return contentView
    }()

    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.width * 3)
    }
    
    private var salyCollectionView = BestSellingCollectionView()
    private var newCollectionView = RecomedCollectionView()
    private let viewbg = BacgroundView(background: Colors.Bacground, Type: .Square)
    private let Header1Label = CustomLabel(title: "Welcome to", fontsize: 22, fontType: .bold, textColor: Colors.offLight, textAligmentTrue: false )
    private let Header2Label = CustomLabel(title: "App", fontsize: 22, fontType: .bold, textColor: Colors.light, textAligmentTrue: false )
    private let Label1 = CustomLabel(title: "Categories", fontsize: 18, fontType: .bold, textColor: UIColor.black)
    private let Label2 = CustomLabel(title: "Best Selling", fontsize: 18, fontType: .bold, textColor: UIColor.black)
    private let logoButton = CustomButtonImage(image: UIImage(named: "account")!, tintColor: true)
    private let noficationButton = CustomButtonImage(image: UIImage(named: "nofication")!, tintColor: false)
    private let circleImage1 = CustomButtonImage(image: UIImage(named: "nofication")!, tintColor: false)
    private let circleImage2 = CustomButtonImage(image: UIImage(named: "nofication")!, tintColor: false)
    private let circleImage3 = CustomButtonImage(image: UIImage(named: "nofication")!, tintColor: false)
    private let search = CustomTextField(fieldType: .search)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Colors.View

        setupUI()
        salyCollectionView.set(cells: collectionViewModel.fetchSushi())
        newCollectionView.set(cells: collectionView2Model.fetchSushi())
        
    }
    
  
    private func setupUI() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(logoButton)
        contentView.addSubview(noficationButton)
        contentView.addSubview(Header1Label)
        contentView.addSubview(Header2Label)
        contentView.addSubview(search)
        contentView.addSubview(Label1)
        contentView.addSubview(Label2)
        contentView.addSubview(viewbg)
        contentView.addSubview(salyCollectionView)
        contentView.addSubview(newCollectionView)
      
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label2.translatesAutoresizingMaskIntoConstraints = false
        search.translatesAutoresizingMaskIntoConstraints = false
        Header1Label.translatesAutoresizingMaskIntoConstraints = false
        Header2Label.translatesAutoresizingMaskIntoConstraints = false
        logoButton.translatesAutoresizingMaskIntoConstraints = false
        noficationButton.translatesAutoresizingMaskIntoConstraints = false
        viewbg.translatesAutoresizingMaskIntoConstraints = false
        salyCollectionView.translatesAutoresizingMaskIntoConstraints = false
        newCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 500),
            
            logoButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            logoButton.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 18),
            logoButton.heightAnchor.constraint(equalToConstant: view.frame.size.width/8.3),
            logoButton.widthAnchor.constraint(equalToConstant: view.frame.size.width/8.3),
            
            noficationButton.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            noficationButton.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -40),
            noficationButton.heightAnchor.constraint(equalToConstant: 30),
            noficationButton.widthAnchor.constraint(equalToConstant: 30),
            
            Header1Label.topAnchor.constraint(equalTo: logoButton.bottomAnchor, constant: 10),
            Header1Label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 13),
            Header1Label.heightAnchor.constraint(equalToConstant: 30),
            
            Header2Label.topAnchor.constraint(equalTo: logoButton.bottomAnchor, constant: 10),
            Header2Label.leftAnchor.constraint(equalTo: Header1Label.rightAnchor, constant: 10),
            Header2Label.heightAnchor.constraint(equalToConstant: 30),
            
            search.topAnchor.constraint(equalTo: Header2Label.bottomAnchor, constant: 22),
            search.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            search.heightAnchor.constraint(equalToConstant: 50),
            search.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            Label1.topAnchor.constraint(equalTo: search.bottomAnchor, constant: 22),
            Label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 18),

            viewbg.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: 22),
            viewbg.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            viewbg.heightAnchor.constraint(equalToConstant: view.frame.size.width/3.5),
            viewbg.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.90),
            
            
            Label2.topAnchor.constraint(equalTo: viewbg.bottomAnchor, constant: 22),
            Label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 18),
            
            salyCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            salyCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            salyCollectionView.topAnchor.constraint(equalTo: Label2.bottomAnchor, constant: 10),
            salyCollectionView.heightAnchor.constraint(equalToConstant: 350),
            
            newCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newCollectionView.topAnchor.constraint(equalTo: salyCollectionView.bottomAnchor, constant: 10),
            newCollectionView.heightAnchor.constraint(equalToConstant: 350),
        ])
        
    }
    @objc private func accountImage() {
        print("tapped")
    }
    
    @objc private func noficationTapped() {
        print("noficationTapped")
    }
    
    
}
