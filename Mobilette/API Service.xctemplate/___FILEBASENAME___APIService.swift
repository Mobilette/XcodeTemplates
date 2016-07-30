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
import MobiletteFoundation

class ___FILEBASENAMEASIDENTIFIER___APIService
{
    // MARK: - Request

    <# ... #>

    // MARK: - Type
    
    enum Error: MBError
    {
        case Unknown
        case Unauthorized
        case MissingData
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
            return "___FILEBASENAMEASIDENTIFIER___APIService"
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
            case .Unknown:
                return ""
            case .Unauthorized:
                return "Need to be logged before performing request."
            case .MissingData:
                return "Response string doesn't contain any known datas.\nRequest server: \(router.path) with \(router.method.rawValue) method."
            case .Serialization(let object):
                return "Can not serialize this object: \(object)."
            }
        }
    }
}