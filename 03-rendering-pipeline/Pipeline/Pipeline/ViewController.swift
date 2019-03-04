//
//  ViewController.swift
//  Pipeline
//
//  Created by linyongzhi on 2019/3/4.
//  Copyright © 2019 BabyTiger. All rights reserved.
//

import Cocoa
import MetalKit

class ViewController: NSViewController {

    var renderer: Renderer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let metalView = view as? MTKView else {
            fatalError("metal view not set up in storyboard")
        }
        renderer = Renderer(metalView: metalView)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

