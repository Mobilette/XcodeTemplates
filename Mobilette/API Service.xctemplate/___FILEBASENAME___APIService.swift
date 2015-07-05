//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Alamofire
import PromiseKit

class ___FILEBASENAMEASIDENTIFIER___APIService
{
    // MARK: - Request

    <# ... #>

    // MARK: - Type
    
    enum ___FILEBASENAMEASIDENTIFIER___APIError
    {
        case Unknown(RouterProtocol)
        case Unauthorized(RouterProtocol)
        case MissingData(RouterProtocol)
        case Serialization(AnyObject)
        
        var code: Int {
            switch self {
            case .Unknown:
                return 500
            case .Unauthorized:
                return 401
            case .MissingData:
                return 500
            case .Serialization:
                return 500
            }
        }
        
        var domain: String {
            switch self {
            case .Unknown:
                return "NetworkDomain"
            case .Unauthorized:
                return "UserUnauthorizedDomain"
            case .MissingData:
                return "DataManagementDomain"
            case .Serialization:
                return "DataManagementDomain"
            }
        }
        
        var description: String {
            switch self {
            case .Unknown:
                return "Unknown error."
            case .Unauthorized:
                return "Unauthorized."
            case .MissingData:
                return "Missing datas."
            case .Serialization:
                return "Serialization Error."
            }
        }
        
        var reason: String {
            switch self {
            case .Unknown(let router):
                return "Unknown error at \(router.path)\nRequest server: \(router.path) with \(router.method.rawValue) method."
            case .Unauthorized(let router):
                return "Need to be logged before performing \(router.path)\nRequest server: \(router.path) with \(router.method.rawValue) method."
            case .MissingData(let router):
                return "Response string doesn't contain any known datas.\nRequest server: \(router.path) with \(router.method.rawValue) method."
            case .Serialization(let object):
                return "Can not serialize this object: \(object)."
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