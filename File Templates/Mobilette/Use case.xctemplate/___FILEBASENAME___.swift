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

class ___FILEBASENAMEASIDENTIFIER___
{
    // MARK: - Property
    
    weak var output: ___FILEBASENAMEASIDENTIFIER___Output? = nil
    
    // MARK: - Repository
    
    var ___VARIABLE_resourceVar___Repository = ___VARIABLE_resource___Repository()
    
    // MARK: - Life cycle
    
}

extension ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Input
{
    fileprivate func validate(request: ___FILEBASENAMEASIDENTIFIER___Request) -> ___FILEBASENAMEASIDENTIFIER___Error?
    {
        // FIXME: Incomplete implementation, validation rules should be implemented
        return nil
    }
}
