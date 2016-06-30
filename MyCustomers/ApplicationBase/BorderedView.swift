import UIKit
import QuartzCore

@IBDesignable class BorderedView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.whiteColor() {
        didSet {
            configureView()
        }
    }

    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            configureView()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureView()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        configureView()
    }

    private func configureView() {
        let borderBottom = UIView()
        self.addSubview(borderBottom)

        borderBottom.backgroundColor = borderColor  

        let borderViewLeading = NSLayoutConstraint(
            item: borderBottom, attribute: .Leading, relatedBy: .Equal, toItem: self, attribute: .Leading, multiplier: 1, constant: 0)
        let borderViewTrailing = NSLayoutConstraint(
            item: borderBottom, attribute: .Trailing, relatedBy: .Equal, toItem: self, attribute: .Trailing, multiplier: 1, constant: 0)
        let borderViewHeight = NSLayoutConstraint(
            item: borderBottom, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1, constant: borderWidth)
        let borderViewBottom = NSLayoutConstraint(
            item: borderBottom, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1, constant: 0)

        self.addConstraints([borderViewLeading, borderViewTrailing, borderViewHeight, borderViewBottom])
        borderBottom.translatesAutoresizingMaskIntoConstraints = false

        setNeedsDisplay()
    }

}
