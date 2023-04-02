//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/1/23.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTF.text == "1" && passwordTF.text == "1" {
            guard let secondVC = segue.destination as? WelcomeViewController else { return }
            secondVC.userName = "Welcome, \(userNameTF.text ?? "")!"
        } else {
            showAlert(
                withTitle: "Alert!",
                andMessage: "Error User Name or Password"
            )
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        userNameTF.resignFirstResponder()
        passwordTF.resignFirstResponder()
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func forgotNameButtonTapped(_ sender: UIButton) {
        showAlert(
            withTitle: "Forgot User Name",
            andMessage: "You User Name is 1"
        )
    }

    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(
            withTitle: "Forgot password",
            andMessage: "You password 1"
        )
    }

    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

}

