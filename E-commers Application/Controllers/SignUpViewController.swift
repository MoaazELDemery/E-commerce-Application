import UIKit

class SignUpViewController: UIViewController {

    
    var isClicked = true
    var isShowen = true
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblSignUp: UILabel!
    @IBOutlet weak var txtFieldName: UITextField!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    @IBOutlet weak var txtFieldMobile: UITextField!
    @IBOutlet weak var btnShowPassword: UITextField!
    @IBOutlet weak var btnCheckBox: UIButton!
    @IBOutlet weak var btnTermsAndCond: UIButton!
    @IBOutlet weak var btnHaveAccount: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnGoogleLogin: UIButton!
    @IBOutlet weak var btnFacebookLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldName.setLeftPaddingPoints(10)
        txtFieldEmail.setLeftPaddingPoints(10)
        txtFieldMobile.setLeftPaddingPoints(10)
        txtFieldPassword.setLeftPaddingPoints(10)
    }
    @IBAction func btnBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func txtFieldNameAction(_ sender: Any) {
    }
    @IBAction func txtFieldEmailAction(_ sender: Any) {
    }
    @IBAction func txtFieldPasswordAction(_ sender: Any) {
    }
    @IBAction func txtFieldMobileAction(_ sender: Any) {
    }
    @IBAction func btnShowPasswordAction(_ sender: Any) {
        if isShowen{
            isShowen = false
            txtFieldPassword.isSecureTextEntry = false
        }else{
            isShowen = true
            txtFieldPassword.isSecureTextEntry = true
        }
    }
    @IBAction func btnCheckBoxAction(_ sender: UIButton) {
        
        
        if isClicked {
            isClicked = false
            btnCheckBox.setImage(UIImage(systemName: "square"), for: .normal)

        }else{
            isClicked = true
            btnCheckBox.setImage(UIImage(named: "Selected"), for: .normal)
        }

        
    }
    @IBAction func btnTermsAndCondAction(_ sender: Any) {
    }
    @IBAction func btnHaveAccountAction(_ sender: Any) {
    }
    @IBAction func btnSignUpAction(_ sender: Any) {
    }
    @IBAction func btnGoogleLoginAction(_ sender: Any) {
    }
    @IBAction func btnFacebookLoginAction(_ sender: Any) {
    }
    
    
}
