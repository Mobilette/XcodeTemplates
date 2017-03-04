//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  ACMS template version 2.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import PromiseKit
import ObjectMapper

protocol Controllable
{
    associatedtype RequestType: BaseMappable
    associatedtype ResponseType: BaseMappable
    typealias ActionSelector = (([String: Any]) -> Promise<String>)
    
    func performRequest( _ request: RequestType, action: ActionSelector) -> Promise<ResponseType>
}

extension Controllable
{
    func performRequest( _ request: RequestType, action: ActionSelector) -> Promise<ResponseType>
    {
        return Promise<ResponseType> { fullfil, reject in
            let parameters = request.toJSON()
            action(parameters)
                .then { jsonString -> Void in
                    guard let response = ResponseType(JSONString: jsonString) else {
                        return reject(ControllableError.mappingFailed)
                    }
                    fullfil(response)
                }
                .catch { error in reject(error) }
        }
    }
}
