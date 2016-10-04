import UIKit
import QuartzCore

@IBDesignable class BorderedView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            configureView()
        }
    }

    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            configureView()
        }
    }

    @IBInspectable var borderMargin: CGFloat = 15 {
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

    fileprivate func configureView() {
        let borderBottom = UIView()
        addSubview(borderBottom)

        borderBottom.backgroundColor = borderColor

        let borderViewLeading = NSLayoutConstraint(
            item: borderBottom, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: borderMargin)
        let borderViewTrailing = NSLayoutConstraint(
            item: borderBottom, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
        let borderViewHeight = NSLayoutConstraint(
            item: borderBottom, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: borderWidth/2)
        let borderViewBottom = NSLayoutConstraint(
            item: borderBottom, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)

        addConstraints([borderViewLeading, borderViewTrailing, borderViewHeight, borderViewBottom])
        borderBottom.translatesAutoresizingMaskIntoConstraints = false

        setNeedsDisplay()
    }

}
