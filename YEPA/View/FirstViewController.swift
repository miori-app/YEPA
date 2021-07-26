//
//  FirstViewController.swift
//  YEPA
//
//  Created by miori Lee on 2021/07/11.
//

import UIKit
import SnapKit
import Then

class FirstViewController: UIViewController {
    
    let mainLogo = UIImageView().then {
        let tmpImg = UIImage(named: "TextLogo.png")
        // image Resize
        //$0.image = tmpImg?.aspectFittedToHeight(45)
        $0.image = UIImage(named: "YEPAO.png")
        $0.contentMode = .scaleAspectFit
        //$0.clipsToBounds = false
    }
    
    

    
    let boldLabel = UILabel().then {
        $0.numberOfLines = 0
        $0.text = "Your English Partner"
        $0.textColor = .black
        $0.font = UIFont.boldSystemFont(ofSize: 21)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        _ = [mainLogo,boldLabel].map { self.view.addSubview($0)}
        
        bindConstraints()
    }
    
    

}

extension FirstViewController {
    
    private func bindConstraints(){
        mainLogo.snp.makeConstraints {
            $0.centerY.equalToSuperview().offset(-30)
            $0.centerX.equalToSuperview()
        }
        
        
        boldLabel.snp.makeConstraints {
            $0.top.equalTo(mainLogo.snp.bottom).offset(59.14)
            $0.centerX.equalToSuperview()
        }
    }
}

