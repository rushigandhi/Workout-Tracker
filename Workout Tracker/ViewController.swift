//
//  ViewController.swift
//  Workout Tracker
//
//  Created by Rushi Gandhi on 2018-03-12.
//  Copyright © 2018 Rushi Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        view.backgroundColor = .black
        let weightsImage = UIImageView(image: #imageLiteral(resourceName: "weights"))
        view.addSubview(weightsImage)
        
        // this enables autolayout for our weightsImage
        weightsImage.translatesAutoresizingMaskIntoConstraints = false
        
        weightsImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weightsImage.widthAnchor.constraint(equalToConstant: 300).isActive = true
        weightsImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

