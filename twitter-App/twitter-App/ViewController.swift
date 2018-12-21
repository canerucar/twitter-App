//
//  ViewController.swift
//  twitter-App
//
//  Created by Caner Uçar on 20.12.2018.
//  Copyright © 2018 Caner Uçar. All rights reserved.
//

import UIKit
import RevealingSplashView
import LBTAComponents

class ViewController: UIViewController {

    //Initialize a revealing Splash with with the iconImage, the initial size and the background color
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "twitteriCON")!, iconInitialSize: CGSize(width: 150 , height: 150), backgroundColor: UIColor(red:0.11, green:0.56, blue:0.95, alpha:1.0))

    //Adds the revealing splash view as a sub view

    
    //Starts animation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupViews()
    }

    
    func setupViews() {
        revealingSplashView.animationType = SplashAnimationType.squeezeAndZoomOut
        revealingSplashView.startAnimation()
            
        
        view.addSubview(revealingSplashView)
    }

}

