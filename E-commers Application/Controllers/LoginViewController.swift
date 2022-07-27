import UIKit

class LoginViewController: UIViewController {

    var isShowen = true
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var btnShowPassword: UIButton!
    @IBOutlet weak var btnForgotPassword: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnGoogleLogin: UIButton!
    @IBOutlet weak var btnFacebookLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldEmail.setLeftPaddingPoints(10)
        txtFieldPassword.setLeftPaddingPoints(10)


    }
    @IBAction func btnBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func txtFieldEmailAction(_ sender: Any) {
    }
    @IBAction func txtFieldPasswordAction(_ sender: Any) {
    }
    @IBAction func btnShowPasswordAction(_ sender: Any) {
        if isShowen{
            isShowen = false
            txtFieldPassword.isSecureTextEntry = false
        }else{
            isShowen = true
            txtFieldPassword.isSecureTextEntry = true
        }    }
    @IBAction func btnForgotPasswordAction(_ sender: Any) {
    }
    @IBAction func btnLoginAction(_ sender: Any) {
    }
    @IBAction func btnGoogleLoginAction(_ sender: Any) {
    }
    @IBAction func btnFacebookAction(_ sender: Any) {
    }
    
    
}
