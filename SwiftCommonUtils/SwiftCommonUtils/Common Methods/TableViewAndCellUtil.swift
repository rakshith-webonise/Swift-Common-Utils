
import Foundation
import UIKit

//MARK:To set a seperator below each uitableview cell
//set originX and originY to 0 and height as per requirement ,set width to cell width 
func lineSeperatorTableViewCell(originX : CGFloat , originY : CGFloat , height : CGFloat ,width : CGFloat ,seperatorColor : UIColor)->UIView{
    let frameSeperatorView = CGRect(x: originX, y: originY, width: width, height: height)
    let seperatorView = UIView(frame: frameSeperatorView)
    seperatorView.backgroundColor = seperatorColor
    return seperatorView
}
