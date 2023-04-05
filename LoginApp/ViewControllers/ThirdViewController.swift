//
//  ThirdViewController.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/5/23.
//

import UIKit

final class ThirdViewController: UIViewController {

    @IBOutlet weak var hobbyLabel: UILabel!

    var hobby = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        hobbyLabel.text = hobby
    }

}
