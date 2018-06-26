//
//  ViewController.swift
//  Timer Demo
//
//  Created by Soon Yin Jie on 26/6/18.
//  Copyright © 2018 Tinkercademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    var counter = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
    }
    
    @objc func update() {
        counter += 0.1
        print(counter)
    }
    
    
    
}

