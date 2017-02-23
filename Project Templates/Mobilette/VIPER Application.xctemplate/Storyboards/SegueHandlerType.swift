//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Mobilette template version 4.0
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
// ___COPYRIGHT___
//

import UIKit

public protocol SegueHandlerType
{
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
    
    public func performSegue(withIdentifier identifier: SegueIdentifier, sender: Any?)
    {
        performSegue(withIdentifier: identifier.rawValue, sender: sender)
    }
    
    public func segueIdentifier(for segue: UIStoryboardSegue) -> SegueIdentifier
    {
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier) else {
                fatalError("Invalid segue identifier.")
        }
        return segueIdentifier
    }
}
