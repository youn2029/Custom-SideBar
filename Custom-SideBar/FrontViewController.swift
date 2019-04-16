//
//  FrontViewController.swift
//  Custom-SideBar
//
//  Created by 윤성호 on 16/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    // 사이드 바 버튼
    @IBOutlet var sideBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 메인 컨트롤러의 참조 정보를 가져오기
        if let revealVC = self.revealViewController() {
            
            // 버튼을 클릭될 때 메인 컨트롤러에 정의된 revealToggle(_:)을 호출
            self.sideBarButton.target = revealVC
            self.sideBarButton.action = #selector(revealVC.revealToggle(_:))
            
            // 제스처를 뷰에 추가
            self.view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
    }

}
