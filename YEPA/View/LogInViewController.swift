//
//  FirstViewController.swift
//  YEPA
//
//  Created by miori Lee on 2021/07/11.
//

import UIKit
import SnapKit
import Then

class LogInViewController: UIViewController {
    
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
        $0.textColor = .gray3
        $0.textAlignment = .center
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        _ = [mainLogo,mainOrangeLogo,boldLabel,subLabel].map { self.view.addSubview($0)}
        
        bindConstraints()
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
    }
}

