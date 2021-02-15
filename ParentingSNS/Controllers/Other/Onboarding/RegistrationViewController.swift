//
//  RegistrationViewController.swift
//  ParentingSNS
//
//  Created by Ashley Kim on 1/4/21.
//

import UIKit

class RegistrationViewController: UIViewController {
    
    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    private let createAccount: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Create Account"
        label.font = UIFont(name: "CircularStd-Black", size: 24)
        
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Email"
        label.textColor = .systemGray
        label.font = UIFont(name: "CircularStd-Black", size: 12)
                
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Full Name"
        label.textColor = .systemGray
        label.font = UIFont(name: "CircularStd-Black", size: 12)
        
        return label
    }()
    
//    private let firstNameLabel: UILabel = {
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
//        label.text = "First Name"
//        label.textColor = .systemGray
//        label.font = UIFont(name: "CircularStd-Black", size: 12)
//
//        return label
//    }()
//
//    private let lastNameLabel: UILabel = {
//        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
//        label.text = "Last Name"
//        label.textColor = .systemGray
//        label.font = UIFont(name: "CircularStd-Black", size: 12)
//
//        return label
//    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Username"
        label.textColor = .systemGray
        label.font = UIFont(name: "CircularStd-Black", size: 12)
        
        return label
    }()
    
    private let usernameInfoLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 5, y: 0, width: 10, height: 0))
        label.text = "You can use letters, numbers, and underscores"
        label.textColor = .systemGray
        label.font = UIFont(name: "CircularStd-Black", size: 12)
        
        return label
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Password"
        label.textColor = .systemGray
        label.font = UIFont(name: "CircularStd-Black", size: 15)
        
        return label
    }()
    
    private let confirmLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Confirm Password"
        label.textColor = .systemGray
        label.font = UIFont(name: "CircularStd-Black", size: 15)
        
        return label
    }()
    
    let checkbox = Checkbox(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
    
    private let agreeLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.numberOfLines = 2
        label.text = "By signing up you accept the Terms of Services and \nPrivacy Policy"
        label.font = UIFont(name: "CircularStd-Black", size: 12)
        
        return label
    }()
    
    private let signInLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        label.text = "Already have an account?"
        label.font = UIFont(name: "CircularStd-Black", size: 12)
        
        return label
    }()
    
   private let emailField: UITextField = {
        let field =  UITextField()
        field.placeholder = "Email"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
//        field.layer.cornerRadius = Constants.cornerRadius
//        field.backgroundColor = .secondarySystemBackground
//        field.layer.borderWidth = 1.0
//        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let nameField: UITextField = {
        let field =  UITextField()
        field.placeholder = "Full Name"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
//        field.backgroundColor = .secondarySystemBackground
//        field.layer.borderWidth = 1.0
//        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
//    private let firstNameField: UITextField = {
//        let field =  UITextField()
//        field.placeholder = "First Name"
//        field.returnKeyType = .next
//        field.leftViewMode = .always
//        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
//        field.autocapitalizationType = .none
//        field.autocorrectionType = .no
//        field.layer.masksToBounds = true
//        field.layer.cornerRadius = Constants.cornerRadius
////        field.backgroundColor = .secondarySystemBackground
////        field.layer.borderWidth = 1.0
////        field.layer.borderColor = UIColor.secondaryLabel.cgColor
//        return field
//    }()
//
//    private let lastNameField: UITextField = {
//        let field =  UITextField()
//        field.placeholder = "Last Name"
//        field.returnKeyType = .next
//        field.leftViewMode = .always
//        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
//        field.autocapitalizationType = .none
//        field.autocorrectionType = .no
//        field.layer.masksToBounds = true
////        field.layer.cornerRadius = Constants.cornerRadius
////        field.backgroundColor = .secondarySystemBackground
////        field.layer.borderWidth = 1.0
////        field.layer.borderColor = UIColor.secondaryLabel.cgColor
//        return field
//    }()
    
    private let usernameField: UITextField = {
        let field =  UITextField()
        field.placeholder = "Username"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
//        field.layer.cornerRadius = Constants.cornerRadius
//        field.backgroundColor = .secondarySystemBackground
//        field.layer.borderWidth = 1.0
//        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let passwordField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Password"
        field.returnKeyType = .continue
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
//        field.layer.cornerRadius = Constants.cornerRadius
//        field.backgroundColor = .secondarySystemBackground
//        field.layer.borderWidth = 1.0
//        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let confirmField: UITextField = {
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "Confirm Password"
        field.returnKeyType = .continue
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
//        field.layer.cornerRadius = Constants.cornerRadius
//        field.backgroundColor = .secondarySystemBackground
//        field.layer.borderWidth = 1.0
//        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        return field
    }()
    
    private let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign Up", for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = Constants.cornerRadius
        button.backgroundColor = .systemGray
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.layer.masksToBounds = true
//        button.layer.cornerRadius = Constants.cornerRadius
//        button.backgroundColor = .systemGray
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButton.addTarget(self,
                                 action: #selector(didTapRegister),
                                 for: .touchUpInside)
        
        
        emailField.delegate = self
        usernameField.delegate = self
        nameField.delegate = self
//        firstNameField.delegate = self
//        lastNameField.delegate = self
        passwordField.delegate = self
        confirmField.delegate = self
        
        addSubviews()
        addButtonActions()
        
        view.backgroundColor = .systemBackground
        // Do any additional setup after loading the view.
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckbox))
        checkbox.addGestureRecognizer(gesture)
    }
    
    private func addSubviews() {
        view.addSubview(createAccount)
        view.addSubview(emailLabel)
        view.addSubview(emailField)
        view.addSubview(nameLabel)
        view.addSubview(nameField)
//        view.addSubview(firstNameLabel)
//        view.addSubview(firstNameField)
//        view.addSubview(lastNameLabel)
//        view.addSubview(lastNameField)
        view.addSubview(usernameLabel)
        view.addSubview(usernameField)
        view.addSubview(usernameInfoLabel)
        view.addSubview(passwordLabel)
        view.addSubview(passwordField)
        view.addSubview(confirmLabel)
        view.addSubview(confirmField)
        view.addSubview(checkbox)
        view.addSubview(agreeLabel)
        view.addSubview(registerButton)
        view.addSubview(signInLabel)
        view.addSubview(signInButton)
    }
    
    private func addButtonActions() {
        signInButton.addTarget(self,
                               action: #selector(didTapSignInButton),
                               for: .touchUpInside)
        
    }
    
    @objc private func didTapSignInButton() {
        let vc = LoginViewController()
//        vc.title = "Create Account"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
//        present(UINavigationController(rootViewController: vc), animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        createAccount.frame = CGRect(x: 24, y: view.safeAreaInsets.top + 76, width: view.width - 40, height: 40)
        emailLabel.frame = CGRect(x: 24, y: createAccount.bottom + 36, width: view.width - 40, height: 15)
        emailField.frame = CGRect(x: 24, y: emailLabel.bottom + 8, width: view.width - 40, height: 25)
        nameLabel.frame = CGRect(x: 24, y: emailField.bottom + 24, width: view.width - 40, height: 15)
        nameField.frame = CGRect(x: 24, y: nameLabel.bottom + 8, width: view.width - 40, height: 25)
//        firstNameLabel.frame = CGRect(x: 24, y: emailField.bottom + 24, width: view.width - 40, height: 15)
//        firstNameField.frame = CGRect(x: 24, y: firstNameLabel.bottom + 8, width: view.width - 40, height: 25)
//        lastNameLabel.frame = CGRect(x: 24, y: firstNameField.bottom + 24, width: view.width - 40, height: 15)
//        lastNameField.frame = CGRect(x: 24, y: lastNameLabel.bottom + 8, width: view.width - 40, height: 25)
        usernameLabel.frame = CGRect(x: 24, y: nameField.bottom + 24, width: view.width - 40, height: 15)
        usernameField.frame = CGRect(x: 24, y: usernameLabel.bottom + 8, width: view.width - 40, height: 25)
        usernameInfoLabel.frame = CGRect(x: 24, y: usernameField.bottom + 4, width: view.width - 40, height: 15)
        passwordLabel.frame = CGRect(x: 24, y: usernameInfoLabel.bottom + 24, width: view.width - 40, height: 15)
        passwordField.frame = CGRect(x: 24, y: passwordLabel.bottom + 8, width: view.width - 40, height: 25)
        confirmLabel.frame = CGRect(x: 24, y: passwordField.bottom + 24, width: view.width - 40, height: 15)
        confirmField.frame = CGRect(x: 24, y: confirmLabel.bottom + 8, width: view.width - 40, height: 25)
        checkbox.frame = CGRect(x: 24, y: confirmField.bottom + 24, width: 16, height: 16)
        agreeLabel.frame = CGRect(x: 48, y: confirmField.bottom + 24, width: view.width - 40, height: 30)
        registerButton.frame = CGRect(x: 24, y: confirmField.bottom  + 90, width: view.width - 40, height: 40)
        signInLabel.frame = CGRect(x: 97, y: registerButton.bottom + 36, width: 180, height: 15)
        signInButton.frame = CGRect(x: view.width - 150, y: registerButton.bottom + 36, width: 100, height: 15)
    }
    
    @objc private func didTapRegister() {
        emailField.resignFirstResponder()
        nameField.resignFirstResponder()
//        firstNameField.resignFirstResponder()
//        lastNameField.resignFirstResponder()
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        guard let email = emailField.text, !email.isEmpty,
              let name = nameField.text, !name.isEmpty,
//              let firstName = firstNameField.text, !firstNameField.isEmpty,
//              let lastName = lastNameField.text, !lastNameField.isEmpty,
              let password = passwordField.text, !password.isEmpty, password.count >= 8,
              let confirm = confirmField.text, !confirm.isEmpty, confirm == password,
              let username = usernameField.text, !username.isEmpty else {
                return
        }
        
        AuthManager.shared.registerNewUser(name: name, username: username, email: email, password: password) { registered in
            DispatchQueue.main.async {
                if registered {
                    //succeeded
                }
                else {
                    //failed
                }
            }

        }
    }
    
    @objc private func didTapCheckbox() {
        checkbox.toggle()
    }
}

extension RegistrationViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameField {
            emailField.becomeFirstResponder()
        } else if textField == emailField{
            passwordField.becomeFirstResponder()
        } else {
            didTapRegister()
        }
        return true
    }
}

