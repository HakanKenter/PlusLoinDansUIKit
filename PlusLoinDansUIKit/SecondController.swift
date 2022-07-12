//
//  SecondController.swift
//  PlusLoinDansUIKit
//
//  Created by kenter on 12/07/2022.
//

import UIKit

class SecondController: UIViewController {
    
    @IBOutlet weak var suppBtn: UIBarButtonItem!
    
    var v: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Second View")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        createView()
        createViewWithConstraints()
        listerLesViews()
    }
    
    func createViewWithConstraints() {
        v = UIView()
        self.view.addSubview(v)
        let safe = self.view.safeAreaLayoutGuide
        v.backgroundColor = .systemMint
        v.translatesAutoresizingMaskIntoConstraints = false
        v.topAnchor.constraint(equalTo: safe.topAnchor, constant: 20).isActive = true
        v.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        v.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
        v.heightAnchor.constraint(equalToConstant: 128).isActive = true
//        v.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -120).isActive = true
    }
    
    func createView() {
        let x: CGFloat = 0
        let y: CGFloat = 134
        let width: CGFloat = 200
        let height: CGFloat = 128
        
        let size: CGSize = CGSize(width: width, height: height)
        let point: CGPoint = CGPoint(x: x, y: y)
        
        let rect: CGRect = CGRect(origin: point, size: size)
        v = UIView(frame: rect)
        v.backgroundColor = .systemMint
        v.isUserInteractionEnabled = true
        v.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(arrangeSub)))
        
        let frame = self.view.frame
        let redView = UIView(frame:
                                CGRect(
                                    x: 20,
                                    y: 0,
                                    width: frame.width - 40,
                                    height: frame.height
                                ))
        redView.backgroundColor = .red 
        self.view.addSubview(redView)
        
        let third = UIView(frame: CGRect(x: 10, y: 10, width: 64, height: 64))
        third.backgroundColor = .white
        redView.addSubview(third)
        self.view.addSubview(v)
        frameVsBounds()
        UIView.animate(withDuration: 1) {
            self.v.transform = CGAffineTransform(rotationAngle: 35)
        } completion: { success in
            self.frameVsBounds()
        }

    }
    
    func frameVsBounds() {
        print("Frame: \(v.frame)")
        print("Bounds: \(v.bounds)")
    }
    
    @objc func arrangeSub() {
        // En avant
//        self.view.bringSubviewToFront(v)
        
//        self.view.sendSubviewToBack(v)
        for index in 0..<self.view.subviews.count {
            let newView = self.view.subviews[index]
            print("Index : \(index) => \(newView == v)")
            if index == 0 {
                let isV = newView == v
                isV ? self.view.bringSubviewToFront(v): self.view.sendSubviewToBack(v)
            }
        }
    }
    
    func listerLesViews() {
        for subView in self.view.subviews {
            print(subView)
            if subView.subviews.count > 0 {
                print("On a une autre vue à l'intérieur")
            }
        }
    }
    
    @IBAction func btnPressed(_ sender: Any) {
        for subView in self.view.subviews {
            subView.removeFromSuperview()
        }
    }
    
}
