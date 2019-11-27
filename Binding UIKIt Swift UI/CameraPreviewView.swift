//
//  CameraPreviewView.swift
//  Test-Headshot
//
//  Created by Doug on 2019-11-23.
//  Copyright © 2019 Shodu Ltd. All rights reserved.
//

import SwiftUI
import AVFoundation
import UIKit


struct RepresentablePreviewView: UIViewControllerRepresentable  {
    
    @Binding var text: String
    @Binding var label: UILabel
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<RepresentablePreviewView>) -> RepresentableViewController {
       return RepresentableViewController()
    }
    
    func updateUIViewController(_ representableViewController: RepresentableViewController, context: UIViewControllerRepresentableContext<RepresentablePreviewView>) {
        representableViewController.text = self.text
        representableViewController.label = self.label
        representableViewController.updateController()
    }
 
}

final class RepresentableViewController : UIViewController {
    
    var text: String = "A"
    var label: UILabel = UILabel(frame: CGRect(x: 40.0, y: 120.0, width: 250.0, height: 100.0))
   
    func updateController(){
        print("update text 1 " + text)
        label.center = self.view.center
        label.textAlignment = NSTextAlignment.justified
        label.textColor = UIColor.blue
        label.backgroundColor = UIColor.lightGray
        label.text = self.text
        view.addSubview(label)
    }
    
    override func viewDidLoad() {
        print("View did load")
        super.viewDidLoad()
    }
}

