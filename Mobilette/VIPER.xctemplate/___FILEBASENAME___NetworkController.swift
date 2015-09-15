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
import PromiseKit
import ObjectMapper

class ___FILEBASENAMEASIDENTIFIER___NetworkController: ___FILEBASENAMEASIDENTIFIER___NetworkProtocol
{
    // MARK: - Property
    
    // MARK: - Life cycle

    // MARK: - Network
    
    // MARK: - Error
    
    enum ___FILEBASENAMEASIDENTIFIER___NetworkControllerError
    {
        case Mapping(String)
        
        var code: Int {
            switch self {
            case .Mapping:
                return 500
            }
        }
        
        var domain: String {
            return "NetworkControllerDomain"
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
        
        var error: NSError {
            let userInfo = [
                NSLocalizedDescriptionKey: self.description,
                NSLocalizedFailureReasonErrorKey: self.reason
            ]
            return NSError(domain: self.domain, code: self.code, userInfo: userInfo)
        }
    }
}