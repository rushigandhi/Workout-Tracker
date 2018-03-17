//
//  ViewController.swift
//  Workout Tracker
//
//  Created by Rushi Gandhi on 2018-03-12.
//  Copyright © 2018 Rushi Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

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
//        container.backgroundColor = .blue
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
        
    }()
    
    let inputName: UITextField = {
        let name = UITextField()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.placeholder = "Name"
        name.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        name.font = UIFont.systemFont(ofSize: 15)
        name.borderStyle = UITextBorderStyle.roundedRect
        name.autocorrectionType = UITextAutocorrectionType.no
        name.keyboardType = UIKeyboardType.default
        name.returnKeyType = UIReturnKeyType.done
        name.clearButtonMode = UITextFieldViewMode.whileEditing;
        name.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        return name
    }()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private func setupUI(){
        
        // this enables autolayout for our weightsImage
        weightsImage.centerXAnchor.constraint(equalTo: halfContainer.centerXAnchor).isActive = true
        weightsImage.centerYAnchor.constraint(equalTo: halfContainer.centerYAnchor).isActive = true
        weightsImage.widthAnchor.constraint(equalTo: halfContainer.widthAnchor, multiplier: 0.8).isActive = true
        weightsImage.heightAnchor.constraint(equalTo: halfContainer.heightAnchor, multiplier: 0.8).isActive = true
        weightsImage.topAnchor.constraint(equalTo: halfContainer.topAnchor, constant: 0).isActive = true
        
        // this enables autolayout for our welcomeTextView
        welcomeTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeTextView.topAnchor.constraint(equalTo: weightsImage.bottomAnchor).isActive = true
        welcomeTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        welcomeTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        welcomeTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        // this enables autolayout for our halfContainer
        halfContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        halfContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        halfContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        halfContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        halfContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        // this enables autolayout for our inputName
        inputName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputName.topAnchor.constraint(equalTo: weightsImage.bottomAnchor, constant: 100).isActive = true
        
        // this enables autolayout for our continueButton
        continueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        continueButton.topAnchor.constraint(equalTo: weightsImage.bottomAnchor, constant: 150).isActive = true



    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        halfContainer.addSubview(weightsImage)
        view.addSubview(welcomeTextView)
        view.addSubview(halfContainer)
        view.addSubview(inputName)
        view.addSubview(continueButton)
        self.inputName.delegate = self

        setupUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

