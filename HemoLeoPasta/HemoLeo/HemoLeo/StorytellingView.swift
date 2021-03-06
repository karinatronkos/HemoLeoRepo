//
// StorytellingView.swift
// Generated by Core Animator version 1.3.2 on 17/11/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

private class StorytellingPassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class StorytellingView : UIView, CAAnimationDelegate {


	var animationCompletions = Dictionary<CAAnimation, (Bool) -> Void>()
	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
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
		__scaling__.bounds = CGRect(x:0, y:0, width:1024, height:768)
		__scaling__.center = CGPoint(x:512.0, y:384.0)
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let movement__root = StorytellingPassthroughView()
		let movement__xScale = StorytellingPassthroughView()
		let movement__yScale = StorytellingPassthroughView()
		let movement = UIImageView()
		let imgArrow = UIImage(named:"arrow.png", in: bundle, compatibleWith: nil)
		if imgArrow == nil {
			print("** Warning: Could not create image from 'arrow.png'")
		}
		movement.image = imgArrow
		movement.contentMode = .center
		movement.bounds = CGRect(x:0, y:0, width:56.0, height:16.0)
		movement__root.layer.position = CGPoint(x:908.000, y:708.000)
		movement__xScale.transform = CGAffineTransform(scaleX: 1.40, y: 1.00)
		movement__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.40)
		movement__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(movement__root)
		movement__root.addSubview(movement__xScale)
		movement__xScale.addSubview(movement__yScale)
		movement__yScale.addSubview(movement)
		__scaling__.addSubview(movement__root)
		viewsByName["Movement__root"] = movement__root
		viewsByName["Movement__xScale"] = movement__xScale
		viewsByName["Movement__yScale"] = movement__yScale
		viewsByName["Movement"] = movement

		let movementMask__root = StorytellingPassthroughView()
		let movementMask__xScale = StorytellingPassthroughView()
		let movementMask__yScale = StorytellingPassthroughView()
		let movementMask = UIImageView()
		let imgGradient2 = UIImage(named:"gradient2.png", in: bundle, compatibleWith: nil)
		if imgGradient2 == nil {
			print("** Warning: Could not create image from 'gradient2.png'")
		}
		movementMask.image = imgGradient2
		movementMask.contentMode = .center
		movementMask.bounds = CGRect(x:0, y:0, width:185.0, height:118.0)
		movementMask__root.layer.position = CGPoint(x:139.000, y:5.000)
		movementMask__xScale.transform = CGAffineTransform(scaleX: 0.17, y: 1.00)
		movementMask__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.06)
		movementMask__root.transform = CGAffineTransform(rotationAngle: 4.712)
		movement.addSubview(movementMask__root)
		movementMask__root.addSubview(movementMask__xScale)
		movementMask__xScale.addSubview(movementMask__yScale)
		movementMask__yScale.addSubview(movementMask)
		movement.mask = movementMask__root
		viewsByName["Movement_mask__root"] = movementMask__root
		viewsByName["Movement_mask__xScale"] = movementMask__xScale
		viewsByName["Movement_mask__yScale"] = movementMask__yScale
		viewsByName["Movement_mask"] = movementMask

		let hand__root = StorytellingPassthroughView()
		let hand__xScale = StorytellingPassthroughView()
		let hand__yScale = StorytellingPassthroughView()
		let hand = UIImageView()
		let imgHand = UIImage(named:"hand.png", in: bundle, compatibleWith: nil)
		if imgHand == nil {
			print("** Warning: Could not create image from 'hand.png'")
		}
		hand.image = imgHand
		hand.contentMode = .center
		hand.bounds = CGRect(x:0, y:0, width:54.0, height:50.0)
		hand__root.layer.position = CGPoint(x:958.925, y:728.962)
		hand__xScale.transform = CGAffineTransform(scaleX: 0.00, y: 1.00)
		hand__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.00)
		hand__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(hand__root)
		hand__root.addSubview(hand__xScale)
		hand__xScale.addSubview(hand__yScale)
		hand__yScale.addSubview(hand)
		__scaling__.addSubview(hand__root)
		viewsByName["hand__root"] = hand__root
		viewsByName["hand__xScale"] = hand__xScale
		viewsByName["hand__yScale"] = hand__yScale
		viewsByName["hand"] = hand

		let fala2__root = StorytellingPassthroughView()
		let fala2__xScale = StorytellingPassthroughView()
		let fala2__yScale = StorytellingPassthroughView()
		let fala2 = UIImageView()
		let imgFala1 = UIImage(named:"Fala1.png", in: bundle, compatibleWith: nil)
		if imgFala1 == nil {
			print("** Warning: Could not create image from 'Fala1.png'")
		}
		fala2.image = imgFala1
		fala2.contentMode = .center
		fala2.bounds = CGRect(x:0, y:0, width:803.0, height:119.0)
		fala2__root.layer.position = CGPoint(x:579.315, y:173.865)
		fala2__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		fala2__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		fala2__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(fala2__root)
		fala2__root.addSubview(fala2__xScale)
		fala2__xScale.addSubview(fala2__yScale)
		fala2__yScale.addSubview(fala2)
		__scaling__.addSubview(fala2__root)
		viewsByName["Fala2__root"] = fala2__root
		viewsByName["Fala2__xScale"] = fala2__xScale
		viewsByName["Fala2__yScale"] = fala2__yScale
		viewsByName["Fala2"] = fala2

		let fala2Mask__root = StorytellingPassthroughView()
		let fala2Mask__xScale = StorytellingPassthroughView()
		let fala2Mask__yScale = StorytellingPassthroughView()
		let fala2Mask = UIImageView()
		fala2Mask.image = imgGradient2
		fala2Mask.contentMode = .center
		fala2Mask.bounds = CGRect(x:0, y:0, width:185.0, height:118.0)
		fala2Mask__root.layer.position = CGPoint(x:-996.768, y:101.000)
		fala2Mask__xScale.transform = CGAffineTransform(scaleX: 1.71, y: 1.00)
		fala2Mask__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 16.76)
		fala2Mask__root.transform = CGAffineTransform(rotationAngle: 4.712)
		fala2.addSubview(fala2Mask__root)
		fala2Mask__root.addSubview(fala2Mask__xScale)
		fala2Mask__xScale.addSubview(fala2Mask__yScale)
		fala2Mask__yScale.addSubview(fala2Mask)
		fala2.mask = fala2Mask__root
		viewsByName["Fala2_mask__root"] = fala2Mask__root
		viewsByName["Fala2_mask__xScale"] = fala2Mask__xScale
		viewsByName["Fala2_mask__yScale"] = fala2Mask__yScale
		viewsByName["Fala2_mask"] = fala2Mask

		let leoFalando__root = StorytellingPassthroughView()
		let leoFalando__xScale = StorytellingPassthroughView()
		let leoFalando__yScale = StorytellingPassthroughView()
		let leoFalando = UIImageView()
		let imgLeoFalando = UIImage(named:"Leo falando.png", in: bundle, compatibleWith: nil)
		if imgLeoFalando == nil {
			print("** Warning: Could not create image from 'Leo falando.png'")
		}
		leoFalando.image = imgLeoFalando
		leoFalando.contentMode = .center
		leoFalando.bounds = CGRect(x:0, y:0, width:170.0, height:179.0)
		leoFalando__root.layer.position = CGPoint(x:115.000, y:130.000)
		leoFalando__xScale.transform = CGAffineTransform(scaleX: 0.00, y: 1.00)
		leoFalando__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.00)
		leoFalando__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(leoFalando__root)
		leoFalando__root.addSubview(leoFalando__xScale)
		leoFalando__xScale.addSubview(leoFalando__yScale)
		leoFalando__yScale.addSubview(leoFalando)
		__scaling__.addSubview(leoFalando__root)
		viewsByName["Leo falando__root"] = leoFalando__root
		viewsByName["Leo falando__xScale"] = leoFalando__xScale
		viewsByName["Leo falando__yScale"] = leoFalando__yScale
		viewsByName["Leo falando"] = leoFalando

		let arrow__root = StorytellingPassthroughView()
		let arrow__xScale = StorytellingPassthroughView()
		let arrow__yScale = StorytellingPassthroughView()
		let arrow = UIImageView()
		arrow.image = imgArrow
		arrow.contentMode = .center
		arrow.bounds = CGRect(x:0, y:0, width:56.0, height:16.0)
		arrow__root.layer.position = CGPoint(x:1052.823, y:672.536)
		arrow__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		arrow__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		arrow__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(arrow__root)
		arrow__root.addSubview(arrow__xScale)
		arrow__xScale.addSubview(arrow__yScale)
		arrow__yScale.addSubview(arrow)
		__scaling__.addSubview(arrow__root)
		viewsByName["arrow__root"] = arrow__root
		viewsByName["arrow__xScale"] = arrow__xScale
		viewsByName["arrow__yScale"] = arrow__yScale
		viewsByName["arrow"] = arrow

		let leoSorrindo__root = StorytellingPassthroughView()
		let leoSorrindo__xScale = StorytellingPassthroughView()
		let leoSorrindo__yScale = StorytellingPassthroughView()
		let leoSorrindo = UIImageView()
		let imgLeoSorrindo = UIImage(named:"Leo sorrindo.png", in: bundle, compatibleWith: nil)
		if imgLeoSorrindo == nil {
			print("** Warning: Could not create image from 'Leo sorrindo.png'")
		}
		leoSorrindo.image = imgLeoSorrindo
		leoSorrindo.contentMode = .center
		leoSorrindo.bounds = CGRect(x:0, y:0, width:453.0, height:536.0)
		leoSorrindo__root.layer.position = CGPoint(x:512.000, y:511.896)
		leoSorrindo__xScale.transform = CGAffineTransform(scaleX: 0.80, y: 1.00)
		leoSorrindo__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.80)
		leoSorrindo__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(leoSorrindo__root)
		leoSorrindo__root.addSubview(leoSorrindo__xScale)
		leoSorrindo__xScale.addSubview(leoSorrindo__yScale)
		leoSorrindo__yScale.addSubview(leoSorrindo)
		__scaling__.addSubview(leoSorrindo__root)
		viewsByName["Leo sorrindo__root"] = leoSorrindo__root
		viewsByName["Leo sorrindo__xScale"] = leoSorrindo__xScale
		viewsByName["Leo sorrindo__yScale"] = leoSorrindo__yScale
		viewsByName["Leo sorrindo"] = leoSorrindo

		self.viewsByName = viewsByName
	}

	// - MARK: story2

	func addStory2Animation() {
		addStory2Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addStory2Animation(completion: ((Bool) -> Void)?) {
		addStory2Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addStory2Animation(removedOnCompletion: Bool) {
		addStory2Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addStory2Animation(removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addStory2Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addStory2Animation(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let instantTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 5.500
			representativeAnimation.delegate = self
			self.layer.add(representativeAnimation, forKey: "Story2")
			self.animationCompletions[layer.animation(forKey: "Story2")!] = complete
		}

		let handScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		handScaleXAnimation.duration = 5.500
		handScaleXAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		handScaleXAnimation.keyTimes = [0.000, 0.818, 0.886, 1.000] as [NSNumber]
		handScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		handScaleXAnimation.beginTime = beginTime
		handScaleXAnimation.fillMode = fillMode
		handScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["hand__xScale"]?.layer.add(handScaleXAnimation, forKey:"story2_ScaleX")

		let handScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		handScaleYAnimation.duration = 5.500
		handScaleYAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		handScaleYAnimation.keyTimes = [0.000, 0.818, 0.886, 1.000] as [NSNumber]
		handScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		handScaleYAnimation.beginTime = beginTime
		handScaleYAnimation.fillMode = fillMode
		handScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["hand__yScale"]?.layer.add(handScaleYAnimation, forKey:"story2_ScaleY")

		let handTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		handTranslationXAnimation.duration = 5.500
		handTranslationXAnimation.values = [0.000, 0.000, -70.000, -70.000] as [Float]
		handTranslationXAnimation.keyTimes = [0.000, 0.909, 0.977, 1.000] as [NSNumber]
		handTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		handTranslationXAnimation.beginTime = beginTime
		handTranslationXAnimation.fillMode = fillMode
		handTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["hand__root"]?.layer.add(handTranslationXAnimation, forKey:"story2_TranslationX")

		let handTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		handTranslationYAnimation.duration = 5.500
		handTranslationYAnimation.values = [0.000, 0.000, 0.000] as [Float]
		handTranslationYAnimation.keyTimes = [0.000, 0.909, 1.000] as [NSNumber]
		handTranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		handTranslationYAnimation.beginTime = beginTime
		handTranslationYAnimation.fillMode = fillMode
		handTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["hand__root"]?.layer.add(handTranslationYAnimation, forKey:"story2_TranslationY")

		let leoFalandoScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		leoFalandoScaleXAnimation.duration = 5.500
		leoFalandoScaleXAnimation.values = [0.000, 0.800, 0.700, 0.700] as [Float]
		leoFalandoScaleXAnimation.keyTimes = [0.000, 0.055, 0.073, 1.000] as [NSNumber]
		leoFalandoScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		leoFalandoScaleXAnimation.beginTime = beginTime
		leoFalandoScaleXAnimation.fillMode = fillMode
		leoFalandoScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Leo falando__xScale"]?.layer.add(leoFalandoScaleXAnimation, forKey:"story2_ScaleX")

		let leoFalandoScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		leoFalandoScaleYAnimation.duration = 5.500
		leoFalandoScaleYAnimation.values = [0.000, 0.800, 0.700, 0.700] as [Float]
		leoFalandoScaleYAnimation.keyTimes = [0.000, 0.055, 0.073, 1.000] as [NSNumber]
		leoFalandoScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		leoFalandoScaleYAnimation.beginTime = beginTime
		leoFalandoScaleYAnimation.fillMode = fillMode
		leoFalandoScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Leo falando__yScale"]?.layer.add(leoFalandoScaleYAnimation, forKey:"story2_ScaleY")

		let movementMaskTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		movementMaskTranslationXAnimation.duration = 5.500
		movementMaskTranslationXAnimation.values = [0.000, 0.000, -65.000] as [Float]
		movementMaskTranslationXAnimation.keyTimes = [0.000, 0.886, 1.000] as [NSNumber]
		movementMaskTranslationXAnimation.timingFunctions = [linearTiming, linearTiming]
		movementMaskTranslationXAnimation.beginTime = beginTime
		movementMaskTranslationXAnimation.fillMode = fillMode
		movementMaskTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Movement_mask__root"]?.layer.add(movementMaskTranslationXAnimation, forKey:"story2_TranslationX")

		let movementMaskTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		movementMaskTranslationYAnimation.duration = 5.500
		movementMaskTranslationYAnimation.values = [0.000, 0.000, 0.000] as [Float]
		movementMaskTranslationYAnimation.keyTimes = [0.000, 0.886, 1.000] as [NSNumber]
		movementMaskTranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		movementMaskTranslationYAnimation.beginTime = beginTime
		movementMaskTranslationYAnimation.fillMode = fillMode
		movementMaskTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Movement_mask__root"]?.layer.add(movementMaskTranslationYAnimation, forKey:"story2_TranslationY")

		let fala2MaskScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		fala2MaskScaleXAnimation.duration = 5.500
		fala2MaskScaleXAnimation.values = [1.712, 1.712, 1.712] as [Float]
		fala2MaskScaleXAnimation.keyTimes = [0.000, 0.155, 1.000] as [NSNumber]
		fala2MaskScaleXAnimation.timingFunctions = [linearTiming, linearTiming]
		fala2MaskScaleXAnimation.beginTime = beginTime
		fala2MaskScaleXAnimation.fillMode = fillMode
		fala2MaskScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Fala2_mask__xScale"]?.layer.add(fala2MaskScaleXAnimation, forKey:"story2_ScaleX")

		let fala2MaskScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		fala2MaskScaleYAnimation.duration = 5.500
		fala2MaskScaleYAnimation.values = [16.765, 16.765, 16.765, 28.454, 28.454] as [Float]
		fala2MaskScaleYAnimation.keyTimes = [0.000, 0.154, 0.155, 0.182, 1.000] as [NSNumber]
		fala2MaskScaleYAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming, linearTiming]
		fala2MaskScaleYAnimation.beginTime = beginTime
		fala2MaskScaleYAnimation.fillMode = fillMode
		fala2MaskScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Fala2_mask__yScale"]?.layer.add(fala2MaskScaleYAnimation, forKey:"story2_ScaleY")

		let fala2MaskTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		fala2MaskTranslationXAnimation.duration = 5.500
		fala2MaskTranslationXAnimation.values = [0.000, 0.000, 1405.000, 1405.000] as [Float]
		fala2MaskTranslationXAnimation.keyTimes = [0.000, 0.073, 0.182, 1.000] as [NSNumber]
		fala2MaskTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		fala2MaskTranslationXAnimation.beginTime = beginTime
		fala2MaskTranslationXAnimation.fillMode = fillMode
		fala2MaskTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Fala2_mask__root"]?.layer.add(fala2MaskTranslationXAnimation, forKey:"story2_TranslationX")

		let fala2MaskTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		fala2MaskTranslationYAnimation.duration = 5.500
		fala2MaskTranslationYAnimation.values = [0.000, 0.000, 0.000] as [Float]
		fala2MaskTranslationYAnimation.keyTimes = [0.000, 0.073, 1.000] as [NSNumber]
		fala2MaskTranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		fala2MaskTranslationYAnimation.beginTime = beginTime
		fala2MaskTranslationYAnimation.fillMode = fillMode
		fala2MaskTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Fala2_mask__root"]?.layer.add(fala2MaskTranslationYAnimation, forKey:"story2_TranslationY")
	}

	func removeStory2Animation() {
		self.layer.removeAnimation(forKey: "Story2")
		self.viewsByName["hand__xScale"]?.layer.removeAnimation(forKey: "story2_ScaleX")
		self.viewsByName["hand__yScale"]?.layer.removeAnimation(forKey: "story2_ScaleY")
		self.viewsByName["hand__root"]?.layer.removeAnimation(forKey: "story2_TranslationX")
		self.viewsByName["hand__root"]?.layer.removeAnimation(forKey: "story2_TranslationY")
		self.viewsByName["Leo falando__xScale"]?.layer.removeAnimation(forKey: "story2_ScaleX")
		self.viewsByName["Leo falando__yScale"]?.layer.removeAnimation(forKey: "story2_ScaleY")
		self.viewsByName["Movement_mask__root"]?.layer.removeAnimation(forKey: "story2_TranslationX")
		self.viewsByName["Movement_mask__root"]?.layer.removeAnimation(forKey: "story2_TranslationY")
		self.viewsByName["Fala2_mask__xScale"]?.layer.removeAnimation(forKey: "story2_ScaleX")
		self.viewsByName["Fala2_mask__yScale"]?.layer.removeAnimation(forKey: "story2_ScaleY")
		self.viewsByName["Fala2_mask__root"]?.layer.removeAnimation(forKey: "story2_TranslationX")
		self.viewsByName["Fala2_mask__root"]?.layer.removeAnimation(forKey: "story2_TranslationY")
	}

	// MARK: CAAnimationDelegate
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValue(forKey: anim)
			completion(flag)
		}
	}

    override func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimation(forKey: "Story2")
	}
}
