//
//  ViewController.swift
//  DarkMode
//
//  Created by Ömer Tarık Özcura on 4.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButtob: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //uygulamayı light modda kullanmak için
        overrideUserInterfaceStyle = .light
    

    }
    
    // uygulamayı arka plana alıp geri dönüldüğünde tetiklenmedi. tetiklemek için
    // traitCollectionDidChange kullanıldı.
    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            changeButtob.tintColor = .red
        }
        else
        {
            changeButtob.tintColor = .blue
        }
    }
    
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle = traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark{
            changeButtob.tintColor = .red
        }
        else
        {
            changeButtob.tintColor = .blue
        }
    }


}

