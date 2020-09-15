//
//  CurrencyTxtField.swift
//  WindowShopper
//
//  Created by Rohit Jangid on 11/09/20.
//  Copyright © 2020 Rohit Jangid. All rights reserved.
//

import UIKit
@IBDesignable class CurrencyTxtField: UITextField {
    
//    override func prepareForInterfaceBuilder() {
//        customizeView()
//    }

    

    override func draw(_ rect: CGRect) {
//        customizeView()
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        if let placeholderText = placeholder {
            let place = NSAttributedString(string: placeholderText, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            attributedPlaceholder = place
        }
        
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 - size / 2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.7032320205)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
}
