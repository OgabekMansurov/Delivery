//
//  UpdateImage.swift
//  Delivery
//
//  Created by Ogabek Mansurov on 7/19/23.
//

import CropViewController
import UIKit

class UpdateImage: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, CropViewControllerDelegate{
    
    static var imageUp = UIImage()
    
    private let imageButton = CustomButton(title: "Pick Photo", hasBackground: "fff", FontSize: 22, tintColor: "ff8000")
    private let nextButton = CustomButton(title: "Next", hasBackground: "fff", FontSize: 17, tintColor: "ff8000")
    private let otNextButton = CustomButton(title: "Cancel Photo", hasBackground: "fff", FontSize: 17, tintColor: "ff8000")

    private let AccountImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "account")
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 40
//        img.layer.borderWidth = 10
        return img
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        self.imageButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        self.otNextButton.addTarget(self, action: #selector(otNextButtonTap), for: .touchUpInside)
        self.nextButton.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)

        setupUI()
    
    }
    
    private func setupUI() {
        view.addSubview(imageButton)
        view.addSubview(AccountImage)
        view.addSubview(otNextButton)
        view.addSubview(nextButton)
        
        AccountImage.translatesAutoresizingMaskIntoConstraints = false
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        otNextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            AccountImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            AccountImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            AccountImage.heightAnchor.constraint(equalToConstant: view.frame.size.width * 1/2),
            AccountImage.widthAnchor.constraint(equalToConstant: view.frame.size.width * 1/2),
            
            imageButton.topAnchor.constraint(equalTo: AccountImage.bottomAnchor, constant: 22),
            imageButton.centerXAnchor.constraint(equalTo: AccountImage.centerXAnchor),
            imageButton.heightAnchor.constraint(equalToConstant: 55),
            imageButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            otNextButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            otNextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            
            nextButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }

    
    @objc func otNextButtonTap() {
        let vc = MainTabBarController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc func nextButtonTap() {
        let vc = MainTabBarController()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func didTapButton() {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else {
            return
        }
        picker.dismiss(animated: true)
        
        showCrop(image: image)
    }
    
    func showCrop(image: UIImage) {
        let vc = CropViewController(croppingStyle: .default, image: image)
        vc.aspectRatioPreset = .presetCustom
        vc.aspectRatioLockEnabled = true
        vc.doneButtonColor = Colors.light
        vc.cancelButtonColor = Colors.light
        vc.toolbarPosition = .top
        vc.doneButtonTitle = "Done"
        vc.cancelButtonTitle = "Back"
        vc.delegate = self
        present(vc, animated: true)
        
    }
    func cropViewController(_ cropViewController: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
        cropViewController.dismiss(animated: true)
        print("Did Crop")
        
        let imageView = UIImageView(frame: view.frame)
        imageView.contentMode = .scaleAspectFit
        AccountImage.image = image
    }
    
}
