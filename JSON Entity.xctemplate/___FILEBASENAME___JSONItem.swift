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
    Mappable,
    Printable
{
    // MARK: - Property

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
        <# propertyName <- map["response field"] #>
    }
    
    // MARK: - Printable protocol
    
    var description: String {
        return "{ ___FILEBASENAMEASIDENTIFIER___JSONItem" + "\n"
            + "<# property name #>: \(self.<# property name #>)" + "\n"
            + "}" + "\n"
    }
}