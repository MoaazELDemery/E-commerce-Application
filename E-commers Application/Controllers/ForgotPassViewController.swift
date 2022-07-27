import UIKit

class ForgotPassViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var txtFieldMobile: UITextField!
    @IBOutlet weak var lblError: UILabel!
    @IBOutlet weak var btnSend: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldMobile.setLeftPaddingPoints(10)
    }
    
    @objc func CheckAndDisplayError(textfield: UITextField){
        
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func txtFieldMobileAction(_ sender: Any) {
    }
    @IBAction func btnSendAction(_ sender: Any) {
        if(txtFieldMobile.text?.count == 0){
            lblError.text = "Please enter your Phone Number"
        }
        if(txtFieldMobile.text != "01096414060"){
            lblError.text = "The number is not registered in our system"
       }else{
           if let viewController = UIStoryboard(name: "Subscription", bundle: nil).instantiateViewController(withIdentifier: "OTPViewController") as? OTPViewController {
               if let navigator = navigationController {
                           navigator.pushViewController(viewController, animated: true)
                       }
           }
       }
    }
}

