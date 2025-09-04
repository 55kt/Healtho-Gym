//
//  UIExtension.swift
//  Healtho Gym
//
//  Created by Vlad on 4/9/25.
//

import SwiftUI

enum Poppins: String {
    case light = "Poppins-Light"
    case regular = "Poppins-Regular"
    case medium = "Poppins-Medium"
    case semiBold = "Poppins-SemiBold"
    case bold = "Poppins-Bold"
}

extension Font {
    static func customfont(_ font: Poppins, fontSize: CGFloat ) -> Font {
        custom(font.rawValue, size: fontSize)
    }
}

extension CGFloat {
    static var screenWidth: Double {
        return UIScreen.main.bounds.size.width
    }
    
    static var screenHeigth: Double {
        return UIScreen.main.bounds.size.height
    }
    
    static func widthPer(per: Double) -> Double {
        return screenWidth * per
        // 375 * 0.5  // 50 % width return
    }
    
    static func heigthPer(per: Double) -> Double {
        return screenHeigth * per
        // 375 * 0.5  // 50 % heigth return
    }
    
    static var topInsests: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.top
        }
        return 0.0
    }
    
    static var bottomInsests: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
    
    static var horizontalInsests: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        }
        return 0.0
    }
    
    static var verticalInsests: Double {
        if let keyWindow = UIApplication.shared.keyWindow {
            return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        }
        return 0.0
    }
}
