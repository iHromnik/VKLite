//
//  ViewController.swift
//  VKLite
//
//  Created by HappyRoman on 23/03/2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordtextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGR)
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboard), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func willShowKeyboard(_ notification: Notification) {
        guard let info = notification.userInfo as NSDictionary?,
                let keyboardSize = info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as? NSValue else {return}
            
        let keyboardHeight = keyboardSize.cgRectValue.size.height
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardHeight, right: 0)
    }
    
    @objc func willHideKeyboard(_ notification: Notification) {
        scrollView.contentInset = .zero
    }
    
    @objc func hideKeyboard() {
        view.endEditing(true)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    
    @IBAction func connectButton(_ sender: Any) {
        
        let checkResult = checkUserData()
        if !checkResult {
            showErrorAlert()
        }
        
        performSegue(withIdentifier: "login", sender: nil)
    }
    
    func checkUserData()-> Bool {
        guard let login = loginTextField.text,
              let password = passwordtextField.text else {return false}
        
        if login == "" && password == "" {
            return true
        } else {return false}
         
    }
    
    func showErrorAlert(){
        let alertVC = UIAlertController(title: "Error", message: "Wrong login or password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive)
        alertVC.addAction(action)
        present(alertVC, animated: true)
    }
    
    
}

