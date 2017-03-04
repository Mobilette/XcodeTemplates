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
import UIKit

class ___FILEBASENAMEASIDENTIFIER___ViewController:
    UIViewController
{
    // MARK: - Property
    
    var presenter: ___FILEBASENAMEASIDENTIFIER___ViewDelegate? = nil
    var storyboardSegueDelegate: StoryboardSegueDelegate? = nil
    
    // MARK: - Life cycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }
    
    // MARK: - Navigation delegate
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        self.storyboardSegueDelegate?.prepare(for: segue, sender: sender)
    }
}

// MARK: -

extension ___FILEBASENAMEASIDENTIFIER___ViewController: ___FILEBASENAMEASIDENTIFIER___ViewInterface
{
    
}
