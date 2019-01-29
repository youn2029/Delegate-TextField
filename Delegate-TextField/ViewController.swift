//
//  ViewController.swift
//  Delegate-TextField
//
//  Created by 윤성호 on 29/01/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
        
        /**
         * 스타일 설정
         */
        
        self.tf.borderStyle = .line // 테두리 스타일 - 직선
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0) // 배경 색상
        self.tf.contentVerticalAlignment = .center // 수직 방향 텍스트 배열 위치 - 가운데
        self.tf.contentHorizontalAlignment = .center // 수평 방향 텍스트 배열 위치 - 가운데
        self.tf.layer.borderColor = UIColor.gray.cgColor // 테두리 색상 - 회색
        self.tf.layer.borderWidth = 2.0 // 테두리 두께 - 2.0픽셀
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

