//
//  ViewController.swift
//  Workout Tracker
//
//  Created by Rushi Gandhi on 2018-03-12.
//  Copyright © 2018 Rushi Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // avoid contaminating the viewDidLoad() function
    // {} is called a closure, or anon. functions
    let weightsImage: UIImageView = {
        let imageView = UIImageView(image:#imageLiteral(resourceName: "weights"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let welcomeTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Welcome to Workout Tracker!"
        textView.font = UIFont.systemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        return textView
    }()
    
    
    let halfContainer: UIView = {
        let container = UIView()
        container.backgroundColor = .blue
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
        
    }()
    
    private func setupUI(){
        
        // this enables autolayout for our weightsImage
        weightsImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        weightsImage.widthAnchor.constraint(equalToConstant: 300).isActive = true
        weightsImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        weightsImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        
        // this enables autolayout for our welcomeTextView
        welcomeTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeTextView.topAnchor.constraint(equalTo: weightsImage.bottomAnchor, constant: 0).isActive = true
        welcomeTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        welcomeTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        welcomeTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        // this enables autolayout for our halfContainer
        halfContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        halfContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        halfContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        halfContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        halfContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true






    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.backgroundColor = .black
        
        view.addSubview(weightsImage)
        view.addSubview(welcomeTextView)
        view.addSubview(halfContainer)
        setupUI()
        
        
        
        
        


        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

