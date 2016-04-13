

import Foundation

let CONSTANT_ONE = 1
//MARK:Email validation
func isValidEmail(testStr:String) -> Bool {
    let trimmedString = getTrimmedString(testStr)
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{1,5}"
    let range = trimmedString.rangeOfString(emailRegEx, options:.RegularExpressionSearch)
    let result = range != nil ? true : false
    if !result {
        //call method to display alert here
    }
    return result
}

//MARK: -To check whether a phone number is valid or not
//valid number is starting with country code, ie + followed by 1 or 3 numeric digits and lenght should be equal or greater than 11.

func isNumberValid(phoneNumberString : String, alert: String) -> Bool{
    let numberRegex = "^[0-9]\\d{9}$"
    if let _ = phoneNumberString.rangeOfString(numberRegex, options: .RegularExpressionSearch){
        return true
    }
    
    return false
}

//MARK: -To check whether name is atleast of 2 characters or not
func isValidString(string: String)-> Bool{
    if getTrimmedString(string).characters.count > CONSTANT_ONE {
        return true
    }
    
    return false
}

//MARK: Check string contains only alphabets
func containsOnlyAlphabets(input: String, alert: String) -> Bool {
    for chr in input.characters {
        if (!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z") ) {
            
            return false
        }
    }
    return true
}
