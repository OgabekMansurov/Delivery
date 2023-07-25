//
//  AddressController.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/23/23.
//

import UIKit
import MapKit


class AddressController: UIViewController {

    private let nextButton = CustomButton(title: "Keyingi", hasBackground: "ff8000", FontSize: 22, tintColor: "fff")
    private let areaLabel = CustomLabel(title: "Area", fontsize: 20, fontType: .bold, textColor: UIColor.black)
    private let streetLabel = CustomLabel(title: "Street name", fontsize: 20, fontType: .bold, textColor: UIColor.black)
    private let areaField = CustomTextField(fieldType: .name)
    private let streetField = CustomTextField(fieldType: .name)
    private let apartmentField = CustomTextField(fieldType: .name)
    
    private let mapBackView: UIView = {
       let map = UIView()
        map.backgroundColor = .blue
        map.layer.cornerRadius = 15
        map.clipsToBounds = true
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()
    
    let mapView: MKMapView = {
       let map = MKMapView()
        map.overrideUserInterfaceStyle = .dark
        return map
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)

    }
    
    private func setupUI() {
        
        view.addSubview(nextButton)
        view.addSubview(mapBackView)
        view.addSubview(areaLabel)
        view.addSubview(streetLabel)
        mapBackView.addSubview(mapView)
        
        view.backgroundColor = .white
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        areaLabel.translatesAutoresizingMaskIntoConstraints = false
        streetLabel.translatesAutoresizingMaskIntoConstraints = false
        mapView.translatesAutoresizingMaskIntoConstraints = false

    NSLayoutConstraint.activate([
        
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -17),
            nextButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            nextButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            nextButton.heightAnchor.constraint(equalToConstant: 46),
            
            
            mapBackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            mapBackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            mapBackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            mapBackView.heightAnchor.constraint(equalToConstant: view.frame.size.height/4),
            
            areaLabel.topAnchor.constraint(equalTo: mapBackView.bottomAnchor, constant: 17),
            areaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 17),
            
            mapView.topAnchor.constraint(equalTo: mapBackView.topAnchor),
            mapView.leftAnchor.constraint(equalTo: mapBackView.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: mapBackView.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: mapBackView.bottomAnchor),
           
    ])
        
    }
    
    @objc func nextButtonTapped() {
        
        print("tapped online")
        
//       let vc = AddressController()
//        self.navigationController?.pushViewController(vc, animated: true)
    }

}

