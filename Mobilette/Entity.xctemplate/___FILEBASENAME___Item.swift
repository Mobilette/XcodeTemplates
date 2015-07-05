//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation

class ___FILEBASENAMEASIDENTIFIER___Item: 
    Mappable,
    Printable
{
    // MARK: - Property

    <# ... #>

    // MARK: - Life cycle

    init() {}
    
    // MARK: - Printable protocol
    
    var description: String {
        return "{ ___FILEBASENAMEASIDENTIFIER___Item" + "\n"
            + "<# property name #>: \(self.<# property name #>)" + "\n"
            + "}" + "\n"
    }
}