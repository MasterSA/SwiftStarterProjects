//
//  CustomSegmentedControl.swift
//  CustomSegmentedControl
//
//  Created by Azizur Rahman on 2018-02-03.
//  Copyright © 2018 Azizur Rahman. All rights reserved.
//

import UIKit

@IBDesignable class CustomSegmentedControl: UIControl {
    
    var buttons = [UIButton]()
    var selector : UIView!
    var selectedSegmentIndex = 0
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = self.borderWidth
            
        }
    }
    
    @IBInspectable var buttonTextColor: UIColor = UIColor.black {
        didSet {
            self.updateSegment()
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet {
            self.layer.borderColor = self.borderColor.cgColor
        }
    }
    
    @IBInspectable var buttonTitles : String = "" {
        didSet {
            self.updateSegment()
            
        }
    }
    
    @IBInspectable var selectorColor : UIColor = .lightGray {
        didSet {
            self.updateSegment()
            
        }
    }
    
    @IBInspectable var selectorTextColor : UIColor = .white {
        didSet {
            self.updateSegment()
            
        }
    }
    
    
    func updateSegment() {
        self.buttons.removeAll()
        subviews.forEach {
            $0.removeFromSuperview()
        }
        let buttonTitles = self.buttonTitles.components(separatedBy: ",")
        
        
        for buttonTitle in buttonTitles {
            let button = UIButton(type: .system)
            button.setTitle(buttonTitle, for: .normal)
            button.setTitleColor(self.buttonTextColor, for: .normal)
            button.addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
            self.buttons.append(button)
        }
        
        buttons[0].setTitleColor(selectorTextColor, for: .normal)
        
        let selectorWidth = frame.width/CGFloat(buttonTitles.count)
        
        selector = UIView(frame:CGRect(x: 0, y: 0, width: selectorWidth, height: self.frame.height))
        selector.layer.cornerRadius = self.frame.height/2
        selector.backgroundColor = selectorColor
        addSubview(selector)
        
        let stackView = UIStackView(arrangedSubviews: self.buttons)
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
    }
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = self.frame.size.height/2
    }
    
    
   @objc func buttonTapped(button: UIButton){
        for (btnIndex,btn) in buttons.enumerated() {
            btn.setTitleColor(buttonTextColor, for: .normal)
            if btn == button {
                selectedSegmentIndex = btnIndex
                let seletorStartPosition = frame.width/CGFloat(buttons.count) * CGFloat(btnIndex)
                UIView.animate(withDuration: 0.3, animations: {
                    self.selector.frame.origin.x  = seletorStartPosition
                })
                btn.setTitleColor(selectorTextColor, for: .normal)
            }
        }
        sendActions(for: .valueChanged)
        
    }

}
