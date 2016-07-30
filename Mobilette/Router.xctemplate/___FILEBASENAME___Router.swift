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
    URLRequestConvertible
{
    case Index()
    case Create(___FILEBASENAMEASIDENTIFIER___CreationJSONItem)
    case Read(String)
    case Update(String, ___FILEBASENAMEASIDENTIFIER___UpdateJSONItem)
    case Destroy(String)
    
    var method: Alamofire.Method {
        switch self {
        case .Index:
            return .GET
        case .Create:
            return .POST
        case .Read:
            return .GET
        case .Update:
            return .PUT
        case .Destroy:
            return .DELETE
        }
    }

    var resource: String {
        return <# Model name #>
    }
    
    var path: String {
        switch self {
        case .Index:
            return "/\(resource)/"
        case .Create:
            return "/\(resource)/"
        case .Read(let id):
            return "/\(resource)/\(id)/"
        case .Update(let id, _):
            return "/\(resource)/\(id)"
        case .Destroy(let id):
            return "/\(resource)/\(id)"
        }
    }
    
    // MARK: URLRequestConvertible
    
    var URLRequest: NSURLRequest {
        let mutableURLRequest: NSMutableURLRequest = self.baseURLRequest
        
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
}