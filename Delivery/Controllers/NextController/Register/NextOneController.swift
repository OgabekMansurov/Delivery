//
//  NextOneController.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/25/23.
//

import UIKit
import AVFoundation

class NextOneController: UIViewController {

    let nextButtun = CustomButton(title: "Keyingi", hasBackground: "ff8000", FontSize: 23, tintColor: "fff")
    var languageButtun = CustomButton(title: "выберите русский язык", hasBackground: "fff", FontSize: 18, tintColor: "ff8000")
    
    let label = CustomLabel(title: "Delivery App", fontsize: 27, fontType: .bold, textColor: Colors.light)
    let versionLabel = CustomLabel(title: "Version 1.0", fontsize: 15, fontType: .regular, textColor: Colors.offLight)
    let textLabel = CustomLabel(title: "Xush kelibsiz", fontsize: 15, fontType: .regular, textColor: Colors.offLight, textAligmentTrue: true)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nextButtun.addTarget(self, action: #selector(nextButtunTapped), for: .touchUpInside)
        self.languageButtun.addTarget(self, action: #selector(languageButtunTapped), for: .touchUpInside)

        view.backgroundColor = .white
        
        let videoURL = Bundle.main.url(forResource: "video", withExtension: "mp4") // Get video url
        let avPlayer = AVPlayer(url: videoURL!) // Create avPlayer instance
        let avPlayerLayer = AVPlayerLayer(player: avPlayer) // Create avPlayerLayer instance
        avPlayerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(avPlayerLayer) // Add avPlayerLayer to view's layer.
        avPlayer.play().self
        
        view.addSubview(label)
        view.addSubview(nextButtun)
        view.addSubview(versionLabel)
        view.addSubview(textLabel)
        view.addSubview(languageButtun)
        
        versionLabel.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        nextButtun.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        languageButtun.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

           

            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            nextButtun.bottomAnchor.constraint(equalTo: versionLabel.safeAreaLayoutGuide.topAnchor, constant: -10),
            nextButtun.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 23),
            nextButtun.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -23),
            nextButtun.heightAnchor.constraint(equalToConstant: 46),
            
            versionLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 5),
            versionLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            versionLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            versionLabel.heightAnchor.constraint(equalToConstant: 20),
            
            textLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
            textLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            textLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            textLabel.heightAnchor.constraint(equalToConstant: 40),
            
            languageButtun.bottomAnchor.constraint(equalTo: nextButtun.topAnchor, constant: -10),
            languageButtun.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            languageButtun.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            languageButtun.heightAnchor.constraint(equalToConstant: 40),

        ])
    }
    
    @objc func languageButtunTapped() {
        print("Language Tapped")
        
    }
    
    @objc func nextButtunTapped() {
        let vc = NextLogin()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

