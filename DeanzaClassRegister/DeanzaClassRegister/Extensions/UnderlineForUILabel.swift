//
//  UnderlineForUILabel.swift
//  DeanzaClassRegister
//
//  Created by Karen Jin on 10/12/18.
//  Copyright © 2018 Karen Jin. All rights reserved.
//

import UIKit

extension UILabel{
    
    func underline() {
        if let textString = self.text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedStringKey.underlineStyle, value: NSUnderlineStyle.styleSingle.rawValue, range: NSRange(location: 0, length: attributedString.length))
            attributedText = attributedString
        }
    }
}
