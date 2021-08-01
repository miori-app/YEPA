//
//  AgreeViewController.swift
//  YEPA
//
//  Created by miori Lee on 2021/07/31.
//

import UIKit
import SnapKit
import Then

class AgreeViewController: BaseViewController {
    
    let firstAgreeLabel = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "약관동의"
        $0.textColor = .dG2
        $0.font = UIFont.boldSystemFont(ofSize: 21)
    }
    
    let loginBtn = UIButton().then {
        $0.backgroundColor = .lG2
        $0.setTitle("동의", for: .normal)
        $0.setTitleColor(.cgray2, for: .normal)
    }
    
    let subView = UIView().then {
        $0.backgroundColor = .none
    }
    
    let allAgreeView = UIView().then {
        $0.backgroundColor = .cgray1
        //$0.axis = .horizontal
        //$0.distribution = .fillProportionally
    }
    
    let allAgreeLabel = UILabel().then {
        $0.text = "전체동의"
        $0.textColor = .dG2
        $0.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    let checkBtn0 = UIButton().then {
        $0.setImage(UIImage(named: "ncheck-circle.png"), for: .normal)
        $0.setImage(UIImage(named: "check-circle"), for: .highlighted)
        $0.tag = 0
    }
    
    let mustLabel0 = UILabel().then {
        $0.text = "필수약관"
        $0.textColor = .cgray3
        $0.font = UIFont.systemFont(ofSize: 12)
    }
    
    let mustLabel1 = UILabel().then {
        $0.text = "서비스 이용약관 동의 (필수)"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 14)
    }
    
    let checkBtn1 = UIButton().then {
        $0.setImage(UIImage(named: "ncheck-circle.png"), for: .normal)
        $0.setImage(UIImage(named: "check-circle"), for: .highlighted)
        $0.tag = 1
    }
    
    let mustLabel2 = UILabel().then {
        $0.text = "개인 정보 수집 이용 (필수)"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 14)
    }
    
    let checkBtn2 = UIButton().then {
        $0.setImage(UIImage(named: "ncheck-circle.png"), for: .normal)
        $0.setImage(UIImage(named: "check-circle"), for: .highlighted)
        $0.tag = 2
    }
    
    lazy var mustLabel3 = UILabel().then {
        $0.text = "만 14세 이상 확인 (필수)"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 14)
    }
    
    lazy var checkBtn3 = UIButton().then {
        $0.setImage(UIImage(named: "ncheck-circle.png"), for: .normal)
        $0.setImage(UIImage(named: "check-circle"), for: .highlighted)
        $0.tag = 3
    }

    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 네비게이션 바 타이틀
        self.navigationItem.title = "회원가입"
        self.navigationController?.navigationBar.isTransparent = false
        
        initVC()
        bindConstraints()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AgreeViewController {
    
    private func initVC(){
        _ = [loginBtn,firstAgreeLabel,subView].map { self.view.addSubview($0)}
        _ = [allAgreeView,mustLabel0,mustLabel1,mustLabel2,mustLabel3,checkBtn1,checkBtn2,checkBtn3].map {self.subView.addSubview($0)}
        
       // _ = [allAgreeLabel,checkBtn].map {self.allAgreeView.addArrangedSubview($0)}
        _ = [allAgreeLabel,checkBtn0].map {self.allAgreeView.addSubview($0)}
    }
}

extension AgreeViewController {
    
    private func bindConstraints(){
        
        firstAgreeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(40)
            $0.leading.equalToSuperview().offset(20)
        }
        
        loginBtn.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-47)
            $0.height.equalTo(52)
            $0.leadingMargin.equalToSuperview().offset(20)
        }
        
        subView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-40)
            $0.leadingMargin.equalToSuperview().offset(18)
            $0.height.equalTo(350)
        }
        
        allAgreeView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(56)
        }
        
        allAgreeLabel.snp.makeConstraints {
            $0.topMargin.equalToSuperview().offset(16)
            $0.leading.equalToSuperview().offset(16)
        }
        
        checkBtn0.snp.makeConstraints {
            $0.centerY.equalTo(allAgreeLabel)
            $0.trailing.equalToSuperview().offset(-16)
        }
        
        mustLabel0.snp.makeConstraints {
            $0.top.equalTo(allAgreeView.snp.bottom).offset(9)
            $0.leading.equalToSuperview().offset(12)
        }
        
        mustLabel1.snp.makeConstraints {
            $0.top.equalTo(mustLabel0.snp.bottom).offset(18)
            $0.leading.equalTo(mustLabel0)
        }
        
        checkBtn1.snp.makeConstraints {
            $0.centerY.equalTo(mustLabel1)
            $0.trailing.equalToSuperview().offset(-12)
        }
        
        mustLabel2.snp.makeConstraints {
            $0.top.equalTo(mustLabel1.snp.bottom).offset(27)
            $0.leading.equalTo(mustLabel0)
        }
        
        checkBtn2.snp.makeConstraints {
            $0.centerY.equalTo(mustLabel2)
            $0.trailing.equalToSuperview().offset(-12)
        }
        
        mustLabel3.snp.makeConstraints {
            $0.top.equalTo(mustLabel2.snp.bottom).offset(27)
            $0.leading.equalTo(mustLabel0)
        }
        
        checkBtn3.snp.makeConstraints {
            $0.centerY.equalTo(mustLabel3)
            $0.trailing.equalToSuperview().offset(-12)
        }
    }
}

