import UIKit
import Cartography
import PlaygroundSupport


class CustomView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addSubviews()
        addConstraints()
    }
    
    func addSubviews() { }
    func addConstraints() { }
}

class MyAwesomeView: CustomView {
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = Stylesheet.color(.mainBlue)
        return view
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = Stylesheet.color(.mainLightGray)
        return view
    }()
    
    let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = Stylesheet.color(.white)
        imageView.image = Stylesheet.image(.icon).withRenderingMode(.alwaysTemplate)
        return imageView
    }()
    
    override func addSubviews() {
        topView.addSubview(icon)
        [topView, containerView].forEach(addSubview)
    }
    
    override func addConstraints() {
        constrain(topView, containerView, icon) { topView, containerView, icon in
            topView.top == topView.superview!.top
            topView.leading == topView.superview!.leading
            topView.trailing == topView.superview!.trailing
            topView.height == 200
            
            containerView.top == topView.bottom
            containerView.leading == containerView.superview!.leading
            containerView.trailing == containerView.superview!.trailing
            containerView.bottom == containerView.superview!.bottom
            
            icon.center == topView.center
            icon.height == 100
            icon.width == 100
        }
    }
}


let rect = CGRect(x: 0, y: 0, width: 320, height: 540)
let view = MyAwesomeView(frame: rect)

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view
