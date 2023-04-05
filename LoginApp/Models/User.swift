//
//  User.swift
//  LoginApp
//
//  Created by Alexey Kanaev on 4/5/23.
//

struct User {
    let login: String
    let password: String
    let person: Person

    static func getUser() -> User {
        User(
            login: "Rocky",
            password: "Climbing",
            person: Person(
                name: "Alexey",
                surname: "Kanaev",
                profession: "Lawyer",
                hobby: "Tennis, Sky, Bike"
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let profession: String
    let hobby: String
}
