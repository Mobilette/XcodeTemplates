//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 1.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import MobiletteFoundation
// import PromiseKit
// import ObjectMapper

class ___FILEBASENAMEASIDENTIFIER___NetworkController: ___FILEBASENAMEASIDENTIFIER___NetworkProtocol
{
    // MARK: - Property
    
    // MARK: - Life cycle

    // MARK: - Network
    
    // MARK: - Error
    
    enum Error: MBError
    {
        case Mapping(String)
        
        var code: Int {
            switch self {
            case .Mapping:
                return 500
            }
        }
        
        var domain: String {
            return "___FILEBASENAMEASIDENTIFIER___NetworkControllerDomain"
        }
        
        var description: String {
            switch self {
            case .Mapping:
                return "Mapping Error."
            }
        }
        
        var reason: String {
            switch self {
            case .Mapping(let JSONString):
                return "Response string can not be mapped to the object.\nString: \(JSONString)."
            }
        }
    }
}