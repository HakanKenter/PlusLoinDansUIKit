//
//  ViewController.swift
//  PlusLoinDansUIKit
//
//  Created by kenter on 11/07/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!

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
        self.view.isUserInteractionEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Will A")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Did A")
        let frame = self.view.frame
        let size = frame.size
        print("Taille de la vue du UIViewController est de : \(size)")
        let btnFrame = btn.frame
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Will D")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Did D")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let t = touches.first else { return }
        let position = t.location(in: self.view)
        print("Le CGPoint touché est : \(position)\n. Sont X: est de \(position.x) et son Y est de \(position.y)")
    }

}

