//
//  FirstViewController.swift
//  YEPA
//
//  Created by miori Lee on 2021/07/11.
//

import UIKit
import SnapKit
import Then

class LogInViewController: BaseViewController {
    
    let mainLogo = UIImageView().then {
        //let tmpImg = UIImage(named: "TextLogo.png")
        // image Resize
        //$0.image = tmpImg?.aspectFittedToHeight(45)
        $0.image = UIImage(named: "YEPAO.png")
        $0.contentMode = .scaleAspectFit
        //$0.clipsToBounds = false
    }
    
    let mainOrangeLogo = UIImageView().then {
        $0.image = UIImage(named: "YEPASO.png")
        $0.contentMode = .scaleAspectFit
    }
 
    let boldLabel = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "Your English Partner"
        $0.textColor = .dG2
        $0.font = UIFont.boldSystemFont(ofSize: 21)
    }
    
    let subLabel = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "영어능력이 검증된 파트너들이 여러분의 글을\n매력적으로 번역해드립니다"
        $0.textColor = .cgray3
        $0.textAlignment = .center
    }
    
    let startBtn = UIButton().then {
        $0.backgroundColor = .mainOrange
        $0.setTitle("전화번호로 시작하기", for: .normal)
    }
    
    let loginLabel = UILabel().then {
        $0.text = "번역가로 로그인하기"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isTransparent = true
        
        _ = [mainLogo,mainOrangeLogo,boldLabel,subLabel,startBtn,loginLabel].map { self.view.addSubview($0)}
        
        bindConstraints()
        
        //MARK: Button
        startBtn.addTarget(self, action: #selector(didTapStart), for: .touchUpInside)
    }
    
    

}

extension LogInViewController {
    
    private func bindConstraints(){
        mainLogo.snp.makeConstraints {
            $0.centerY.equalToSuperview().offset(-30)
            $0.centerX.equalToSuperview()
        }
        
        mainOrangeLogo.snp.makeConstraints {
            $0.bottom.equalTo(mainLogo.snp.top).offset(-103)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(59.07)
        }
        
        boldLabel.snp.makeConstraints {
            $0.top.equalTo(mainLogo.snp.bottom).offset(59.14)
            $0.centerX.equalToSuperview()
        }
        
        subLabel.snp.makeConstraints {
            $0.top.equalTo(boldLabel.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
        
        loginLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-47)
        }
        
        startBtn.snp.makeConstraints {
            $0.bottom.equalTo(loginLabel.snp.top).offset(-12)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(56)
            $0.leadingMargin.equalToSuperview().offset(16)
        }
    }
}

extension LogInViewController {
    @objc func didTapStart() {
        print("tapped")
//        let AgreeVC = AgreeViewController()
//        self.present(AgreeVC, animated: true, completion: nil)
//        AgreeVC.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(AgreeViewController(), animated: true)
    }
}

