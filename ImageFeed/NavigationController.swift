//
//  NavigationController.swift
//  ImageFeed
//
//  Created by DANCECOMMANDER on 05.07.2023.
//

import Foundation
import UIKit

final class NavigationController: UINavigationController {
    
    override var childForStatusBarStyle: UIViewController? {
        visibleViewController
    }
    
}
