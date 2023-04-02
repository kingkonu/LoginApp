//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/1/23.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTF.text == "Kirill" && passwordTF.text == "12345" {
            guard let secondVC = segue.destination as? SecondViewController else { return }
            secondVC.userName = userNameTF.text
        } else {
            showAlert(
                withTitle: "Alert!",
                andMessage: "Error User Name or Password"
            )
        }
    }

    @IBAction func forgotNameButtonTapped(_ sender: UIButton) {
        showAlert(
            withTitle: "Forgot User Name",
            andMessage: "You User Name is Kirill"
        )
    }

    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        showAlert(
            withTitle: "Forgot password",
            andMessage: "You password 12345"
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

