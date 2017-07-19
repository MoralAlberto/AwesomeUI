import UIKit
import Foundation

public enum Image {
    case icon
}

public enum Font {
    case light
    case bold
    case italic
}

public enum Color {
    case mainGray
    case mainLightGray
    case mainBlue
    case white
    case black
}

protocol Stylesheetable {
    static func font(_ font: Font) -> UIFont
    static func color(_ font: Color) -> UIColor
    static func image(_ image: Image) -> UIImage
}

public struct Stylesheet: Stylesheetable {
    public static func font(_ font: Font) -> UIFont {
        switch font {
        case .light:
            return UIFont(name: "HelveticaNeue-Light", size: 20)!
        case .bold:
            return UIFont(name: "HelveticaNeue-Bold", size: 20)!
        case .italic:
            return UIFont(name: "HelveticaNeue-Italic", size: 20)!
        }
    }
    
    public static func color(_ color: Color) -> UIColor {
        switch color {
        case .mainGray:
            return UIColor(colorLiteralRed: 144/255.0, green: 146/255.0, blue: 165/255.0, alpha: 1.0)
        case .mainLightGray:
            return UIColor(colorLiteralRed: 247/255.0, green: 247/255.0, blue: 247/255.0, alpha: 1.0)
        case .mainBlue:
            return UIColor(colorLiteralRed: 49/255.0, green: 165/255.0, blue: 236/255.0, alpha: 1.0)
        case .white:
            return UIColor.white
        case .black:
            return UIColor.black
        }
    }
    
    public static func image(_ image: Image) -> UIImage {
        switch image {
        case .icon:
            return UIImage(named: "image")!
        }
    }

}

