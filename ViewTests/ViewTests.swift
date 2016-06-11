//
//  ViewTests.swift
//  ViewTests
//
//  Created by Marcin Raburski on 09.06.2016.
//  Copyright © 2016 Rzeczy. All rights reserved.
//

import XCTest
import UIKit
import View
import KIF

let UITestArgument = "UITestArgument"

class ViewTests: XCTestCase {
    func setUpNavigationController(rootViewController: UIViewController) {
        UIApplication.sharedApplication().keyWindow?.rootViewController = UINavigationController(rootViewController: rootViewController)
    }
    
    func setUpViewController(rootViewController: UIViewController) {
        UIApplication.sharedApplication().keyWindow?.rootViewController = rootViewController
    }
}
