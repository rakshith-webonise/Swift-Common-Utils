

import Foundation
import UIKit

let HEX_MASK = 0x000000FF
let SHIFT_RED : UInt32 =  16
let SHIFT_GREEN : UInt32 = 8
let RBG_MASK : Float = 255.0

//MARK: UIColor from RGB
func getUIColorFromHexCode(colorCode : String, alpha : Float ) -> UIColor{
    let scanner = NSScanner(string:colorCode)
    var color:UInt32 = 0;
    scanner.scanHexInt(&color)
    let mask = HEX_MASK
    let redFromHex = CGFloat(Float(Int(color >> SHIFT_RED) & mask)/RBG_MASK)
    let greenFromHex = CGFloat(Float(Int(color >> SHIFT_GREEN) & mask)/RBG_MASK)
    let blueFromHex = CGFloat(Float(Int(color) & mask)/RBG_MASK)
    return UIColor(red: redFromHex, green: greenFromHex, blue: blueFromHex, alpha: CGFloat(alpha))
}
