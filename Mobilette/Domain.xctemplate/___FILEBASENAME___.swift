//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___:
    Equatable,
    CustomStringConvertible
{
    // MARK: - Property

    var identifier: String? = nil
    <# ... #>

    // MARK: - Life cycle

    init() {}
    
    // MARK: - Printable protocol
    
    var description: String {
        return "{ ___FILEBASENAMEASIDENTIFIER___" + "\n"
            + "identifier: \(self.identifier)" + "\n"
            + "<# property name #>: \(self.<# property name #>)" + "\n"
            + "}" + "\n"
    }
}

// MARK: - Equatable protocol

func ==(lhs: ___FILEBASENAMEASIDENTIFIER___, rhs: ___FILEBASENAMEASIDENTIFIER___) -> Bool {
    return lhs.identifier == rhs.identifier
}