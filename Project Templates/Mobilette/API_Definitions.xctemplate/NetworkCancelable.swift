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
