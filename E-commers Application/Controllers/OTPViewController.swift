import UIKit

class OTPViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var txtFieldFirstChar: UITextField!
    @IBOutlet weak var txtFieldSecondChar: UITextField!
    @IBOutlet weak var txtFieldThirdChar: UITextField!
    @IBOutlet weak var txtFieldFourthChar: UITextField!
    @IBOutlet weak var btnConfirm: UIButton!
    @IBOutlet weak var btnResendCode: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFieldFirstChar.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        txtFieldSecondChar.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        txtFieldThirdChar.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        txtFieldFourthChar.addTarget(self, action: #selector(self.textDidChange(textfield:)), for: UIControl.Event.editingChanged)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        txtFieldFirstChar.becomeFirstResponder()
    }
    
    @objc func textDidChange(textfield: UITextField){
        let text = textfield.text
        if text?.utf16.count == 1{
            switch textfield{
            case txtFieldFirstChar: txtFieldSecondChar.becomeFirstResponder()
            case txtFieldSecondChar: txtFieldThirdChar.becomeFirstResponder()
            case txtFieldThirdChar: txtFieldFourthChar.becomeFirstResponder()
            case txtFieldFourthChar: txtFieldFourthChar.resignFirstResponder()
            default: break


            }
            
        }
        
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func txtFieldFirstCharAcion(_ sender: Any) {
    }
    @IBAction func txtFieldSecondCharAcion(_ sender: Any) {
    }
    @IBAction func txtFieldThirdCharAcion(_ sender: Any) {
    }
    @IBAction func txtFieldFourthCharAcion(_ sender: Any) {
    }
    @IBAction func btnConfirmAction(_ sender: Any) {
    }
    @IBAction func btnResendCodeAction(_ sender: Any) {
    }
}
