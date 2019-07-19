//
//  LoginPageViewController.swift
//  APIdemo
//
//  Created by Jachimike Onuoha on 7/18/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController{
    
    @IBOutlet weak var loginView: UIImageView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var singupButton: UIButton!
    
    var transitioned = false
    var delay = 1.74
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.image = UIImage(named: "Cut")
        loginButton.layer.cornerRadius = 4.0
        loginButton.layer.masksToBounds = true
        singupButton.layer.cornerRadius = 4.0
        singupButton.layer.masksToBounds = true
        
    }
    
    // Transisition from login page to the Home Screen with Samurai swipe
    @IBAction func loginButton(_ sender: Any) {
        
        print("Login Sucessful")
        // Load Samurai gif
        loginView.loadGif(name: "Sumarai")
        timer.invalidate() // Stop timer incase button is pressed multiple times
        // Starts timer delay to let Samurai animation Play
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(delay), target: self, selector: #selector(changeScreen), userInfo: nil, repeats: false)
    }
    
    // This is the function that changes the screen
    @objc func changeScreen(){
        // Switches to home page storyboard and resets the login storyboard
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destionationVC = mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as? ViewController
        navigationController?.pushViewController(destionationVC!, animated: true)
        loginView.image = UIImage(named: "Cut")
}
}

// Notes the name of the initial storyboard is HomeViewController.

