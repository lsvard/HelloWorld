//
//  ViewController.swift
//  HelloWorld
//
//  Created by l.s.vard on 03.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show greeting")
    }

    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show greeting" : "Hide greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled() //как style в настройках в сториборде
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
        buttonConfiguration.cornerStyle = .large //скругление углов
        buttonConfiguration.buttonSize = .large //размер кнопки
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24) //размер шрифта
        return buttonConfiguration
    }
    
}

