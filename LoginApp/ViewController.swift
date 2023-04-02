//
//  ViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/1/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       guard let secondVC = segue.destination as? SecondViewController else { return }
       secondVC.userName = userNameTF.text
    }

    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if userNameTF.text == "1" {


        }

    }


    @IBAction func forgotNameButtonTapped(_ sender: UIButton) {

    }

    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {

    }
    

}

