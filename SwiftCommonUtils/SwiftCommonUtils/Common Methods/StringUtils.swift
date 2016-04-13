
import Foundation

//MARK: Trim string of white spaces
func getTrimmedString (fieldText :String!) ->String{
    var trimfieldText : String
    trimfieldText = fieldText.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    return trimfieldText;
}

func condenseWhitespace(string: String) -> String {
    let components = string.stringByTrimmingCharactersInSet(
        NSCharacterSet.whitespaceCharacterSet()).componentsSeparatedByCharactersInSet(
            NSCharacterSet.whitespaceAndNewlineCharacterSet()).filter({!$0.characters.isEmpty}
    )
    return components.joinWithSeparator(" ") as String
}
