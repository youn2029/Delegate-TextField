//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by 윤성호 on 29/01/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {   // 델리게이트 패턴 적용 1 : UITextFieldDelegate 프로토콜 구현을 선언
    
    @IBOutlet var tf: UITextField!    

    override func viewDidLoad() {
        
        /**
         * 입력값 속성 설정
         */
        self.tf.placeholder = "값을 입력해주세요" // 안내 메시지
        self.tf.keyboardType = .alphabet // 키보드 타입 영문자 패드로
        self.tf.keyboardAppearance = .dark // 키보드 스타일 어둡게
        self.tf.returnKeyType = .join // 리턴키 타입은 "Join"
        self.tf.enablesReturnKeyAutomatically = true // 리턴키 자동 활성화 "On"®
        //self.tf.clearsOnBeginEditing = true // 변경 시작시 내용 삭제
        
        /**
         * 스타일 설정
         */
        self.tf.borderStyle = .line // 테두리 스타일 - 직선
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0) // 배경 색상
        self.tf.contentVerticalAlignment = .center // 수직 방향 텍스트 배열 위치 - 가운데
        self.tf.contentHorizontalAlignment = .center // 수평 방향 텍스트 배열 위치 - 가운데
        self.tf.layer.borderColor = UIColor.gray.cgColor // 테두리 색상 - 회색
        self.tf.layer.borderWidth = 2.0 // 테두리 두께 - 2.0픽셀
        
        // 텍스트 필드를 최초 응답자로 지정
        self.tf.becomeFirstResponder()
        
        // 델리게이트 패턴 적용 2 : 텍스트 필드의 delegate 속성에 self를 대입 (델리게이트 지정)
        // 텍스트 필드에서 미리 정해진 특정 이벤트가 발생하면 현재의 뷰 컨트롤러에게 알려달라는 요청
        self.tf.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 입력 버튼 이벤트
    @IBAction func input(_ sender: Any) {
        
        // 텍스트 필드를 최초 응답자 객체로 지정
        self.tf.becomeFirstResponder()
    }
    
    // 확인 버튼 이벤트
    @IBAction func confirm(_ sender: Any) {
        
        // 텍스트 필드를 최초 응답자 객체에서 해제
        self.tf.resignFirstResponder()
    }
    
    /**
     * UITextFieldDelegate의 메서드
     */
    
    // 텍스트 필드의 편집을 시작할 때 호출
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 시작됩니다")
        return true
    }
    
    // 텍스트 필드의 편집이 시작된 후 호출
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다")
    }
    
    // 텍스트 필드의 내용이 삭제될 때 호출
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 내용이 삭제됩니다")
        return true
    }
    
    // 텍스트 필드의 내용이 변경될 때 호출
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("텍스트 필드의 내용이 \(string)으로 변경됩니다")
        
        if Int(string) == nil { // 입력된 값이 숫자가 아니면 true를 리턴
            
            // 현재 텍스트 필드에 입력된 길이와 더해질 문자열 길이의 합이 10을 넘는다
            if (textField.text?.count)! + string.count > 10 {
                return false
            } else {
                return true
            }
            
        } else {    // 입력된 값이 숫자라면 false를 리턴
            return false
        }
    }
    
    // 텍스트 필드의 리턴키가 눌러졌을 때 호출
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 리턴키가 눌러졌습니다")
        return true
    }
    
    // 텍스트 필드의 편집이 종료될 때 호출
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("텍스트 필드의 편집이 종료됩니다")
        return true
    }
    
    // 텍스트 필드의 편집이 종료되었을 때 호출
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 종료되었습니다")
    }
}

