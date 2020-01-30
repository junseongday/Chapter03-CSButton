import UIKit

public enum CSButtonType {
    case rect
    case circle
}

class CSButton: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        self.backgroundColor = UIColor.green
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.black.cgColor
        self.setTitle("버튼", for: .normal)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.gray
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생선된 버튼", for: .normal)
        
    }
    
    init() {
        super.init(frame: CGRect.zero)
        
        self.backgroundColor = UIColor.gray
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 2
        self.setTitle("코드로 생선된 버튼", for: .normal)
        
        self.addTarget(self, action: #selector(counting(_:)), for: .touchUpInside)
    }
    
    convenience init(type: CSButtonType) {
        self.init()
        
        switch type {
        case .rect:
            self.backgroundColor = UIColor.black
            self.layer.borderColor = UIColor.black.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 0
            self.setTitleColor(UIColor.white, for: .normal)
            self.setTitle("Rect Button", for: .normal)
        case .circle:
            self.backgroundColor = UIColor.red
            self.layer.borderColor = UIColor.blue.cgColor
            self.layer.borderWidth = 2
            self.layer.cornerRadius = 50
//            self.setTitleColor(UIColor.white, for: .normal)
            self.setTitle("Circle Button", for: .normal)
        }
    }
    
    var style : CSButtonType = .rect {
        didSet {
            switch style {
            case .rect:
                self.backgroundColor = UIColor.black
                self.layer.borderColor = UIColor.black.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 0
                self.setTitleColor(UIColor.white, for: .normal)
                self.setTitle("Rect Button", for: .normal)
            case .circle:
                self.backgroundColor = UIColor.red
                self.layer.borderColor = UIColor.blue.cgColor
                self.layer.borderWidth = 2
                self.layer.cornerRadius = 50
    //            self.setTitleColor(UIColor.white, for: .normal)
                self.setTitle("Circle Button", for: .normal)
            }
        }
    }
    
    @objc func counting(_ sender: UIButton) {
        sender.tag = sender.tag + 1
        sender.setTitle("\(sender.tag) 번째 클릭", for: .normal)
    }
}
