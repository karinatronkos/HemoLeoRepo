//
// TutorialPasso7View.swift
// Generated by Core Animator version 1.3.2 on 07/12/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

private class TutorialPasso7PassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class TutorialPasso7View : UIView, CAAnimationDelegate {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 414, height: 454))
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.setupHierarchy()
	}

	// - MARK: Scaling

	override func layoutSubviews() {
		super.layoutSubviews()

		if let scalingView = self.viewsByName["__scaling__"] {
			var xScale = self.bounds.size.width / scalingView.bounds.size.width
			var yScale = self.bounds.size.height / scalingView.bounds.size.height
			switch contentMode {
			case .scaleToFill:
				break
			case .scaleAspectFill:
				let scale = max(xScale, yScale)
				xScale = scale
				yScale = scale
			default:
				let scale = min(xScale, yScale)
				xScale = scale
				yScale = scale
			}
			scalingView.transform = CGAffineTransform(scaleX: xScale, y: yScale)
			scalingView.center = CGPoint(x:self.bounds.midX, y:self.bounds.midY)
		}
	}

	// - MARK: Setup

	func setupHierarchy() {
		var viewsByName: [String : UIView] = [:]
		let bundle = Bundle(for:type(of: self))
		let __scaling__ = UIView()
		__scaling__.bounds = CGRect(x:0, y:0, width:414, height:454)
		__scaling__.center = CGPoint(x:207.0, y:227.0)
		__scaling__.layer.masksToBounds = true
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let telefoneComMao__root = TutorialPasso7PassthroughView()
		let telefoneComMao__xScale = TutorialPasso7PassthroughView()
		let telefoneComMao__yScale = TutorialPasso7PassthroughView()
		let telefoneComMao = UIImageView()
		let imgTelefoneComMao = UIImage(named:"TelefoneComMao.png", in: bundle, compatibleWith: nil)
		if imgTelefoneComMao == nil {
			print("** Warning: Could not create image from 'TelefoneComMao.png'")
		}
		telefoneComMao.image = imgTelefoneComMao
		telefoneComMao.contentMode = .center
		telefoneComMao.bounds = CGRect(x:0, y:0, width:248.0, height:359.0)
		telefoneComMao__root.layer.position = CGPoint(x:207.000, y:227.000)
		telefoneComMao__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		telefoneComMao__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		telefoneComMao__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(telefoneComMao__root)
		telefoneComMao__root.addSubview(telefoneComMao__xScale)
		telefoneComMao__xScale.addSubview(telefoneComMao__yScale)
		telefoneComMao__yScale.addSubview(telefoneComMao)
		__scaling__.addSubview(telefoneComMao__root)
		viewsByName["TelefoneComMao__root"] = telefoneComMao__root
		viewsByName["TelefoneComMao__xScale"] = telefoneComMao__xScale
		viewsByName["TelefoneComMao__yScale"] = telefoneComMao__yScale
		viewsByName["TelefoneComMao"] = telefoneComMao

		let iMG1722__root = TutorialPasso7PassthroughView()
		let iMG1722__xScale = TutorialPasso7PassthroughView()
		let iMG1722__yScale = TutorialPasso7PassthroughView()
		let iMG1722 = UIImageView()
		let imgIMG1722 = UIImage(named:"IMG_1722.png", in: bundle, compatibleWith: nil)
		if imgIMG1722 == nil {
			print("** Warning: Could not create image from 'IMG_1722.png'")
		}
		iMG1722.image = imgIMG1722
		iMG1722.contentMode = .center
		iMG1722.bounds = CGRect(x:0, y:0, width:640.0, height:1136.0)
		iMG1722__root.layer.position = CGPoint(x:183.600, y:208.562)
		iMG1722__xScale.transform = CGAffineTransform(scaleX: 0.22, y: 1.00)
		iMG1722__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.22)
		iMG1722__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(iMG1722__root)
		iMG1722__root.addSubview(iMG1722__xScale)
		iMG1722__xScale.addSubview(iMG1722__yScale)
		iMG1722__yScale.addSubview(iMG1722)
		__scaling__.addSubview(iMG1722__root)
		viewsByName["IMG_1722__root"] = iMG1722__root
		viewsByName["IMG_1722__xScale"] = iMG1722__xScale
		viewsByName["IMG_1722__yScale"] = iMG1722__yScale
		viewsByName["IMG_1722"] = iMG1722

		let iMG1721__root = TutorialPasso7PassthroughView()
		let iMG1721__xScale = TutorialPasso7PassthroughView()
		let iMG1721__yScale = TutorialPasso7PassthroughView()
		let iMG1721 = UIImageView()
		let imgIMG1721 = UIImage(named:"IMG_1721.png", in: bundle, compatibleWith: nil)
		if imgIMG1721 == nil {
			print("** Warning: Could not create image from 'IMG_1721.png'")
		}
		iMG1721.image = imgIMG1721
		iMG1721.contentMode = .center
		iMG1721.bounds = CGRect(x:0, y:0, width:640.0, height:1136.0)
		iMG1721__root.layer.position = CGPoint(x:183.600, y:209.104)
		iMG1721__xScale.transform = CGAffineTransform(scaleX: 0.22, y: 1.00)
		iMG1721__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.22)
		iMG1721__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(iMG1721__root)
		iMG1721__root.addSubview(iMG1721__xScale)
		iMG1721__xScale.addSubview(iMG1721__yScale)
		iMG1721__yScale.addSubview(iMG1721)
		__scaling__.addSubview(iMG1721__root)
		viewsByName["IMG_1721__root"] = iMG1721__root
		viewsByName["IMG_1721__xScale"] = iMG1721__xScale
		viewsByName["IMG_1721__yScale"] = iMG1721__yScale
		viewsByName["IMG_1721"] = iMG1721

		let dedao__root = TutorialPasso7PassthroughView()
		let dedao__xScale = TutorialPasso7PassthroughView()
		let dedao__yScale = TutorialPasso7PassthroughView()
		let dedao = UIImageView()
		let imgDedao = UIImage(named:"Dedao.png", in: bundle, compatibleWith: nil)
		if imgDedao == nil {
			print("** Warning: Could not create image from 'Dedao.png'")
		}
		dedao.image = imgDedao
		dedao.contentMode = .center
		dedao.bounds = CGRect(x:0, y:0, width:144.0, height:136.0)
		dedao__root.layer.position = CGPoint(x:207.000, y:322.368)
		dedao__xScale.transform = CGAffineTransform(scaleX: 1.03, y: 1.00)
		dedao__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.03)
		dedao__root.transform = CGAffineTransform(rotationAngle: 6.273)
		__scaling__.addSubview(dedao__root)
		dedao__root.addSubview(dedao__xScale)
		dedao__xScale.addSubview(dedao__yScale)
		dedao__yScale.addSubview(dedao)
		__scaling__.addSubview(dedao__root)
		viewsByName["Dedao__root"] = dedao__root
		viewsByName["Dedao__xScale"] = dedao__xScale
		viewsByName["Dedao__yScale"] = dedao__yScale
		viewsByName["Dedao"] = dedao

		self.viewsByName = viewsByName
	}

	// - MARK: passo7

	func addPasso7Animation() {
		addPasso7Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addPasso7Animation(completion: ((Bool) -> Void)?) {
		addPasso7Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addPasso7Animation(removedOnCompletion: Bool) {
		addPasso7Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addPasso7Animation(removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addPasso7Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addPasso7Animation(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let instantTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 1.750
			representativeAnimation.delegate = self
			self.layer.add(representativeAnimation, forKey: "Passo7")
			self.animationCompletions[layer.animation(forKey: "Passo7")!] = complete
		}

		let iMG1721OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		iMG1721OpacityAnimation.duration = 1.750
		iMG1721OpacityAnimation.values = [1.000, 1.000, 0.000, 0.000] as [Float]
		iMG1721OpacityAnimation.keyTimes = [0.000, 0.785, 0.786, 1.000] as [NSNumber]
		iMG1721OpacityAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming]
		iMG1721OpacityAnimation.beginTime = beginTime
		iMG1721OpacityAnimation.fillMode = fillMode
		iMG1721OpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["IMG_1721__root"]?.layer.add(iMG1721OpacityAnimation, forKey:"passo7_Opacity")

		let dedaoRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		dedaoRotationAnimation.duration = 1.750
		dedaoRotationAnimation.values = [6.273, 6.273, 6.273, 6.148, 6.283] as [Float]
		dedaoRotationAnimation.keyTimes = [0.000, 0.571, 0.571, 0.786, 1.000] as [NSNumber]
		dedaoRotationAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming, linearTiming]
		dedaoRotationAnimation.beginTime = beginTime
		dedaoRotationAnimation.fillMode = fillMode
		dedaoRotationAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Dedao__root"]?.layer.add(dedaoRotationAnimation, forKey:"passo7_Rotation")
	}

	func removePasso7Animation() {
		self.layer.removeAnimation(forKey: "Passo7")
		self.viewsByName["IMG_1721__root"]?.layer.removeAnimation(forKey: "passo7_Opacity")
		self.viewsByName["Dedao__root"]?.layer.removeAnimation(forKey: "passo7_Rotation")
	}

	// MARK: CAAnimationDelegate
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValue(forKey: anim)
			completion(flag)
		}
	}


}
