//
//  ViewController.swift
//  TestPrimNum
//
//  Created by D7703_24 on 2019. 4. 9..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var textFieldInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldInput.clearButtonMode = UITextField.ViewMode.always
    }
    
    @IBAction func btnEnter(_ sender: Any) {
        if let number = Int(textFieldInput.text!){
            var isPrime = true
            
            //1은 소수가 아니기 때문에 예외처리
            if number == 1{
                isPrime = false
            }
            //0 이하의 수는 소수가 아님(예외처리
            if number <= 0{
                isPrime = false
            }
            
            //입력받은 숫자가 0,1,2 가 아닐 경우 실행할 for문
            if number != 2 && number != 1 && number != 0{
                for i  in 2..<number{
                    if number % i == 0{
                        isPrime = false
                    }
                }
            }
            
            //소수일 경우 소수라고 출력
            if isPrime{
                lbResult.text = "\(number) is prime"
            }else{
            //소수가 아닐 경우 소수가 아니라고 출력
                lbResult.text = "\(number) is not prime"
            }
        }else {
            //그 외에 문자 입력 시
            lbResult.text = "숫자를 입력하세요"
        }
    }
    


}

