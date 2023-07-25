//
//  PhoneService.swift
//  TestPicker
//
//  Created by Anastasia Sokolan on 21.12.2020.
//

import UIKit

final class LanguageService {
    static var phones:[String: (String, UIImage)] =
    {
        var codes = [String:(String, UIImage)]()
        codes["RU"] = ("Russian", UIImage(named: "RU") ?? UIImage())
        codes["UZbek"] = ("Uzbek", UIImage(named: "UZB") ?? UIImage())
        
        return codes
    }()
}
