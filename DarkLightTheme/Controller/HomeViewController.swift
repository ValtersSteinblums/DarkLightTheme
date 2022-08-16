//
//  ViewController.swift
//  DarkLightTheme
//
//  Created by valters.steinblums on 09/08/2022.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var darkButtonOutlet: UIButton!
    @IBOutlet weak var newViewButtonOutlet: UIButton!
    
    var isOn = false
    var mainText = "Dark Theme On"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        navigationItem.title = mainText
        darkButtonOutlet.layer.cornerRadius = 10
        newViewButtonOutlet.layer.cornerRadius = 10
    }

    @IBAction func userInfoTapped(_ sender: Any) {
        basicActionSheet(title: "Action", message: "Action sheet is here!")
    }
    
    
    @IBAction func infoTapped(_ sender: Any) {
        basicAlert(title: "Info is here", message: "This is my basic example!")
    }
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        if isOn {
            print(mainText)
            isOn = false
            mainText = "Dark Theme On"
            darkButtonOutlet.setTitle(mainText, for: .normal)
            darkButtonOutlet.setTitleColor(UIColor.black, for: .normal)
            view.backgroundColor = .white
            navigationItem.title = mainText
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        } else {
            print(mainText)
            isOn = true
            mainText = "Dark Theme Off"
            darkButtonOutlet.setTitle(mainText, for: .normal)
            darkButtonOutlet.tintColor = UIColor.white
            darkButtonOutlet.setTitleColor(UIColor.white, for: .normal)
            view.backgroundColor = .black
            navigationItem.title = mainText
            navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        }
    }
    
}

extension UIViewController {
    func basicAlert(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    func basicActionSheet(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

