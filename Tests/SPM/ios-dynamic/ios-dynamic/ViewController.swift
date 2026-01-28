//
//  ViewController.swift
//  ios-dynamic
//
//  Created by Fahad on 06/02/2022.
//

import UIKit
import GRDB
import SQLCipher

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        try! print(DatabaseQueue().read { try String.fetchOne($0, sql: "SELECT 'Hello world!'")! })
        _ = sqlite3_libversion_number()
    }
}

