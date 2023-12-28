//
//  File.swift
//  
//
//  Created by Avinash Soni on 28/12/23.
//

import Foundation
import PlayingCard

public class EmailValidator {
    public static func validateEmail(email: String) -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}
