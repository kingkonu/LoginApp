//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/1/23.
//  test

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    private let user = "Alexey"
    private let password = "password"

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user
        passwordTF.text = password
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? WelcomeViewController else { return }
        secondVC.userName = user
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func logInPressed() {
        guard userNameTF.text == user, passwordTF.text == password
        else {
            showAlert(
                withTitle: "Неверный логин или пароль",
                andMessage: "Введите правильный логин и пароль",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotNameButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Твой логин \(user)")
        : showAlert(withTitle: "Oops!", andMessage: "Твой пароль \(password)")
    }

    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

