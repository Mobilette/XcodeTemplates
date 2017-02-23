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
import PromiseKit
import Alamofire

// TODO: Create a pool of request and implement cancelable request
class Request
{
    static func send(_ urlRequest: URLRequestConvertible) -> Promise<String>
    {
        return Promise<String> { fullfil, reject in
            Alamofire.request(urlRequest)
            .validate()
            .responseString { response -> Void in
                switch response.result {
                case let .success(json):
                    fullfil(json)
                case let .failure(error):
                    if let error = error as? AFError {
                        switch error {
                        case .responseValidationFailed(let reason):
                            switch reason {
                                case .unacceptableStatusCode(let code):
                                    switch code {
                                    case 401:
                                        reject(APIError.unauthorized)
                                    case 404:
                                        reject(APIError.forbidden)
                                    case 404:
                                        reject(APIError.notFound)
                                    case 500:
                                        reject(APIError.internalError)
                                    case 504:
                                        reject(APIError.timeout)
                                    default:
                                        reject(error)
                                }
                            default:
                                reject(error)
                            }
                        default:
                            reject(error)
                        }
                    }
                }
            }
        }
    }
    
    static func cancel(_ urlRequest: URLRequestConvertible) -> Promise<Void>
    {
        return Promise<Void> { fullfil, reject in
        }
    }
}
