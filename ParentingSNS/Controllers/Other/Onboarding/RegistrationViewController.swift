import UIKit

class RegistrationViewController: UIViewController {

    struct Constants {
        static let cornerRadius: CGFloat = 8.0
    }
    
    private let usernameField: UITextField = {
        let field = UITextField()
        field.placeholder = "Username"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        
        return field
    }()
    
    private let nameField: UITextField = {
       let field = UITextField()
        field.placeholder = "First name and Last name"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        
        return field
    }()
    
    private let emailField: UITextField = {
        let field = UITextField()
        field.placeholder = "Email address"
        field.returnKeyType = .next
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        
        return field
    }()
    
    private let passwordField: UITextField = {
        
        let field = UITextField()
        field.isSecureTextEntry = true
        field.placeholder = "password"
        field.returnKeyType = .continue
        field.leftViewMode = .always
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.layer.masksToBounds = true
        field.layer.cornerRadius = Constants.cornerRadius
        field.backgroundColor = .secondarySystemBackground
        field.layer.borderWidth = 1.0
        field.layer.borderColor = UIColor.secondaryLabel.cgColor
        
        return field
        
    }()
    
    private let SignupButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemGreen
        button.layer.masksToBounds = true
        button.setTitle("Sign Up", for: .normal )
        button.layer.cornerRadius = Constants.cornerRadius
        button.setTitleColor(.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        SignupButton.addTarget(self, action: #selector(didTapSignupButton), for: .touchUpInside)
        
        nameField.delegate = self
        usernameField.delegate = self
        emailField.delegate = self
        passwordField.delegate = self
        
        // Do any additional setup after loading the view.
        
        
        addSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //assign frames
        
        nameField.frame = CGRect(x: 25,
                                  y: view.safeAreaInsets.top + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        usernameField.frame = CGRect(x: 25,
                                     y: nameField.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        emailField.frame = CGRect(x: 25,
                                     y: usernameField.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        passwordField.frame = CGRect(x: 25,
                                     y: emailField.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
        SignupButton.frame = CGRect(x: 25,
                                    y: passwordField.bottom + 10,
                                  width: view.width - 50,
                                  height: 52.0)
    }
    
    private func addSubviews(){
        view.addSubview(emailField)
        view.addSubview(usernameField)
        view.addSubview(passwordField)
        view.addSubview(SignupButton)
        view.addSubview(nameField)
    }
    @objc private func didTapSignupButton() {
        
        nameField.resignFirstResponder()
        usernameField.resignFirstResponder()
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        
        guard let email = emailField.text, !email.isEmpty,
              let password = passwordField.text, !password.isEmpty, password.count >= 8,
              let username = usernameField.text, !username.isEmpty,
              let name = nameField.text, !name.isEmpty else{
                return
        }
        
 /*       AuthManager.shared.registerNewUser(username: username, email: email, password: password, name: name) { (registered) in
            DispatchQueue.main.async {
                if registered {
                    //succeeded
                }else {
                    //failed
                }
            }

        }*/
    }

}



extension RegistrationViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameField {
            usernameField.becomeFirstResponder()
        }else if textField == usernameField {
            emailField.becomeFirstResponder()
        }else if textField == emailField{
            passwordField.becomeFirstResponder()
        }else{
            didTapSignupButton()
        }
        return true
    }
}
