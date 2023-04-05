//
//  SecondViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/5/23.
//

import UIKit

final class SecondViewController: UIViewController {

    @IBOutlet weak var myNameLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var professionLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!

    var name = ""
    var userName = ""
    var surName = ""
    var profession = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        myNameLabel.text = name
        userNameLabel.text = userName
        surnameLabel.text = surName
        professionLabel.text = profession
    }

}
