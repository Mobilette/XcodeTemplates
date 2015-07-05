//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import Foundation
import Alamofire
import ObjectMapper

enum ___FILEBASENAMEASIDENTIFIER___Router:
    RouterProtocol,
    URLRequestConvertible,
    Printable
{
    var baseURLString: String {
        let version = <# Default version #>
        if let baseURLString = ConfigurationHelper.configuration("WEB_SERVICE_BASE_URL", key: "API_URL") {
            return "\(baseURLString)api/\(version)"
        }
        else {
            let baseURLString = <# Base URL string by default #>
            return "\(baseURLString)api/\(version)"
        }
    }
    var OAuthToken: String? {
        if let credentials = LinkydogOAuthCredential.retreiveCredential().0 {
            if let accessToken = credentials.token {
                return accessToken
            }
        }
        return nil
    }
    
    case Index()
    case Create(___FILEBASENAMEASIDENTIFIER___CreationJSONItem)
    case Read(String)
    case Update(String, ___FILEBASENAMEASIDENTIFIER___UpdateJSONItem)
    case Destroy(String)
    
    var method: Alamofire.Method {
        switch self {
        case .Index, .Read:
            return .GET
        case .Create:
            return .POST
        case .Update:
            return .PUT
        case .Destroy:
            return .DELETE
        }
    }

    var model: String {
        return <# Model name #>
    }
    
    var path: String {
        switch self {
        case .Index:
            return "/\(model)/"
        case .Create:
            return "/\(model)/"
        case .Read(let id):
            return "/\(model)/\(id)/"
        case .Update(let id, _):
            return "/\(model)/\(id)"
        case .Destroy(let id):
            return "/\(model)/\(id)"
        }
    }
    
    // MARK: URLRequestConvertible
    
    var URLRequest: NSURLRequest {
        let URL = NSURL(string: self.baseURLString)!
        let mutableURLRequest = NSMutableURLRequest(URL: URL.URLByAppendingPathComponent(path))
        mutableURLRequest.HTTPMethod = method.rawValue
        
        if let token = OAuthToken {
            mutableURLRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        
        switch self {
        case .Create(let JSONItem):
            let JSONParameters = Mapper().toJSON(JSONItem)
            return Alamofire.ParameterEncoding.JSON.encode(mutableURLRequest, parameters: JSONParameters).0
        case .Update(_, let JSONItem):
            let JSONParameters = Mapper().toJSON(JSONItem)
            return Alamofire.ParameterEncoding.JSON.encode(mutableURLRequest, parameters: JSONParameters).0
        default:
            return mutableURLRequest
        }
    }

    // MARK: - Printable protocol
    
    var description: String {
        return "{ ___FILEBASENAMEASIDENTIFIER___Router" + "\n"
            + "baseURLString: \(self.baseURLString)" + "\n"
            + "OAuthToken: \(self.OAuthToken)" + "\n"
            + "method: \(self.method.rawValue)" + "\n"
            + "path: \(self.path)" + "\n"
            + "}" + "\n"
    }
}