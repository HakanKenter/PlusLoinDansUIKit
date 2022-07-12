//
//  ViewController.swift
//  PlusLoinDansUIKit
//
//  Created by kenter on 11/07/2022.
//

import UIKit

class ViewController: UIViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("Codeur")
    }
    
    override func loadView() {
        super.loadView()
        print("Load View ")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will A")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Did A")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Will D")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Did D")
    }


}

