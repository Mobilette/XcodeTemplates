//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.1
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import Alamofire

public protocol NetworkCancelable
{
    var request: DataRequest? { get set }
    
    func cancelRequest()
}

extension NetworkCancelable
{
    public func cancelRequest()
    {
        self.request?.cancel()
    }
}
