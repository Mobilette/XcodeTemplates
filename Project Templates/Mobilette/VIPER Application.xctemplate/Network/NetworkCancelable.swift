//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import Foundation
import Alamofire

protocol NetworkCancelable
{
    var request: DataRequest? { get set }
}

extension NetworkCancelable
{
    func cancelRequest()
    {
        self.request?.cancel()
    }
}
