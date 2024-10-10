//
//  UIViewFromXib.swift
//  iOSHelpers
//
//  Created by owel on 10/10/2024.
//

import UIKit

public protocol XibAsset: AnyObject {
    static func createFromXib() -> Self?
}

public extension XibAsset {
    
    static func createFromXib() -> Self? {
        let bundle = Bundle(for: self)
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".").last
        
        guard let className else {
            return nil
        }
        let view = bundle.loadNibNamed(className, owner: nil)?.first
        return view as? Self
    }
}
