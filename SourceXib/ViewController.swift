//
//  ViewController.swift
//  SourceXib
//
//  Created by user1 on 2023/11/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        let sourceXib: SourceXib = SourceXib(frame: CGRect(x: 100, y: 300, width: 320, height: 20))
        sourceXib.sampleLabel.text = "てすてす"
        self.view.addSubview(sourceXib)
    }
}

