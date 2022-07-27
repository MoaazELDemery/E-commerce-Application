import UIKit

class ResetPassViewController: UIViewController {

    var isShowen = true
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var txtFieldNewPass: UITextField!
    @IBOutlet weak var txtFieldRepeatPass: UITextField!
    @IBOutlet weak var btnShowPass1: UIButton!
    @IBOutlet weak var btnShowPass2: UIButton!
    @IBOutlet weak var btnResetPass: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldNewPass.setLeftPaddingPoints(10)
        txtFieldRepeatPass.setLeftPaddingPoints(10)


    }
    @IBAction func btnBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func txtFieldNewPassAction(_ sender: Any) {
    }
    @IBAction func txtFieldRepeatPassAction(_ sender: Any) {
    }
    @IBAction func btnShowPass1Action(_ sender: Any) {
        if isShowen{
            isShowen = false
            txtFieldNewPass.isSecureTextEntry = false
        }else{
            isShowen = true
            txtFieldNewPass.isSecureTextEntry = true
        }
    }
    @IBAction func btnShowPass2Action(_ sender: Any) {
        if isShowen{
            isShowen = false
            txtFieldRepeatPass.isSecureTextEntry = false
        }else{
            isShowen = true
            txtFieldRepeatPass.isSecureTextEntry = true
        }
    }
    @IBAction func btnResetPassAction(_ sender: Any) {
    }
}
