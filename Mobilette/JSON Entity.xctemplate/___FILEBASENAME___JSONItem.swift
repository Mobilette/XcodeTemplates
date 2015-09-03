//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import ObjectMapper

class ___FILEBASENAMEASIDENTIFIER___JSONItem:
    Equatable,
    Printable,
    Mappable
{
    // MARK: - Property

    var identifier: String?
    <# ... #>

    // MARK: - Life cycle

    init() {}
    
    // MARK: - Mappable protocol

    required init?(_ map: Map)
    {
        mapping(map)
    }
    
    func mapping(map: Map)
    {
        identifier <- map["id"]
        <# propertyName <- map["response field"] #>
    }
    
    // MARK: - Printable protocol
    
    var description: String {
        return "{ ___FILEBASENAMEASIDENTIFIER___JSONItem" + "\n"
            + "identifier: \(self.identifier)" + "\n"
            + "<# property name #>: \(self.<# property name #>)" + "\n"
            + "}" + "\n"
    }
}

// MARK: - Equatable protocol

func ==(lhs: ___FILEBASENAMEASIDENTIFIER___, rhs: ___FILEBASENAMEASIDENTIFIER___) -> Bool {
    return lhs.identifier == rhs.identifier
}