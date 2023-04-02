//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/2/23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var handLabel: UILabel!

    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        handLabel.text = "👋"
        welcomeLabel.text = userName
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemCyan.cgColor, UIColor.systemFill.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
