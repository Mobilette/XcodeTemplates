//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import Alamofire

enum UserRouter:
    RouterProtocol,
    URLRequestConvertible
{
    case Authenticate(String, String)
    
    var method: Alamofire.HTTPMethod {
        switch self {
        case .Authenticate:
            return .post
        }
    }
    
    var path: String {
        switch self {
        case .Authenticate:
            return "/auth"
        }
    }
    
    public func asURLRequest() throws -> URLRequest
    {
        let urlString = baseURLString + path
        guard let url = NSURL(string: urlString) else {
            throw APIError.badURL
        }
        var mutableURLRequest = URLRequest(url: url as URL)
        mutableURLRequest.httpMethod = method.rawValue
        
        if let token = OAuthToken {
            mutableURLRequest.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
        
        switch self {
        case .Authenticate(let email, let password):
            let parameters: [String: Any] = [
                "email": email,
                "password": password
            ]
            return try Alamofire.JSONEncoding.default.encode(mutableURLRequest, with: parameters)
        }
    }
}
