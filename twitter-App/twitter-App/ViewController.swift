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

class ViewController: UIViewController, UINavigationControllerDelegate {

    //Initialize a revealing Splash with with the iconImage, the initial size and the background color
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "twitteriCON")!, iconInitialSize: CGSize(width: 150 , height: 150), backgroundColor: UIColor(red:0.11, green:0.56, blue:0.95, alpha:1.0))

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        setupViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    func setupViews() {
        revealingSplashView.animationType = SplashAnimationType.squeezeAndZoomOut
        
        //Diğer Efektler
        //revealingSplashView.animationType = .woobleAndZoomOut
        //revealingSplashView.animationType = .popAndZoomOut
        //revealingSplashView.animationType = .rotateOut
        //revealingSplashView.animationType = .swingAndZoomOut
        //revealingSplashView.animationType = .twitter
        
         //Starts animation
        revealingSplashView.startAnimation()
            
        
        view.addSubview(revealingSplashView)
    }
    @IBAction func baslaClicked(_ sender: Any) {
        
        //performSegue(withIdentifier: "baslaStoryboard", sender: nil)
        
    }
    
}

