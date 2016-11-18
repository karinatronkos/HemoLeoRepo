//
// TutorialPasso3View.swift
// Generated by Core Animator version 1.3.2 on 17/11/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

private class TutorialPasso3PassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class TutorialPasso3View : UIView, CAAnimationDelegate {


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
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let setaParaBaixo__root = TutorialPasso3PassthroughView()
		let setaParaBaixo__xScale = TutorialPasso3PassthroughView()
		let setaParaBaixo__yScale = TutorialPasso3PassthroughView()
		let setaParaBaixo = UIImageView()
		let imgSetaParaBaixo = UIImage(named:"Seta para baixo.png", in: bundle, compatibleWith: nil)
		if imgSetaParaBaixo == nil {
			print("** Warning: Could not create image from 'Seta para baixo.png'")
		}
		setaParaBaixo.image = imgSetaParaBaixo
		setaParaBaixo.contentMode = .center
		setaParaBaixo.bounds = CGRect(x:0, y:0, width:34.0, height:71.0)
		setaParaBaixo__root.layer.position = CGPoint(x:99.103, y:227.000)
		setaParaBaixo__root.alpha = 0.00
		setaParaBaixo__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		setaParaBaixo__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		setaParaBaixo__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(setaParaBaixo__root)
		setaParaBaixo__root.addSubview(setaParaBaixo__xScale)
		setaParaBaixo__xScale.addSubview(setaParaBaixo__yScale)
		setaParaBaixo__yScale.addSubview(setaParaBaixo)
		__scaling__.addSubview(setaParaBaixo__root)
		viewsByName["Seta para baixo__root"] = setaParaBaixo__root
		viewsByName["Seta para baixo__xScale"] = setaParaBaixo__xScale
		viewsByName["Seta para baixo__yScale"] = setaParaBaixo__yScale
		viewsByName["Seta para baixo"] = setaParaBaixo

		let aplicacao__root = TutorialPasso3PassthroughView()
		let aplicacao__xScale = TutorialPasso3PassthroughView()
		let aplicacao__yScale = TutorialPasso3PassthroughView()
		let aplicacao = UIView()
		aplicacao.bounds = CGRect(x:0, y:0, width:238.0, height:429.0)
		aplicacao__root.layer.position = CGPoint(x:207.000, y:239.500)
		aplicacao__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		aplicacao__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		aplicacao__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(aplicacao__root)
		aplicacao__root.addSubview(aplicacao__xScale)
		aplicacao__xScale.addSubview(aplicacao__yScale)
		aplicacao__yScale.addSubview(aplicacao)
		__scaling__.addSubview(aplicacao__root)
		viewsByName["Aplicacao__root"] = aplicacao__root
		viewsByName["Aplicacao__xScale"] = aplicacao__xScale
		viewsByName["Aplicacao__yScale"] = aplicacao__yScale
		viewsByName["Aplicacao"] = aplicacao

		let produto__root = TutorialPasso3PassthroughView()
		let produto__xScale = TutorialPasso3PassthroughView()
		let produto__yScale = TutorialPasso3PassthroughView()
		let produto = UIImageView()
		let imgProduto = UIImage(named:"Produto.png", in: bundle, compatibleWith: nil)
		if imgProduto == nil {
			print("** Warning: Could not create image from 'Produto.png'")
		}
		produto.image = imgProduto
		produto.contentMode = .center
		produto.bounds = CGRect(x:0, y:0, width:204.0, height:265.0)
		produto__root.layer.position = CGPoint(x:124.000, y:313.500)
		produto__root.alpha = 0.00
		produto__xScale.transform = CGAffineTransform(scaleX: 0.80, y: 1.00)
		produto__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.80)
		produto__root.transform = CGAffineTransform(rotationAngle: 0.000)
		aplicacao.addSubview(produto__root)
		produto__root.addSubview(produto__xScale)
		produto__xScale.addSubview(produto__yScale)
		produto__yScale.addSubview(produto)
		aplicacao.addSubview(produto__root)
		viewsByName["Produto__root"] = produto__root
		viewsByName["Produto__xScale"] = produto__xScale
		viewsByName["Produto__yScale"] = produto__yScale
		viewsByName["Produto"] = produto

		let diluenteEDispositivo__root = TutorialPasso3PassthroughView()
		let diluenteEDispositivo__xScale = TutorialPasso3PassthroughView()
		let diluenteEDispositivo__yScale = TutorialPasso3PassthroughView()
		let diluenteEDispositivo = UIImageView()
		let imgDiluenteEDispositivo = UIImage(named:"Diluente e dispositivo.png", in: bundle, compatibleWith: nil)
		if imgDiluenteEDispositivo == nil {
			print("** Warning: Could not create image from 'Diluente e dispositivo.png'")
		}
		diluenteEDispositivo.image = imgDiluenteEDispositivo
		diluenteEDispositivo.contentMode = .center
		diluenteEDispositivo.bounds = CGRect(x:0, y:0, width:238.0, height:404.0)
		diluenteEDispositivo__root.layer.position = CGPoint(x:119.000, y:202.000)
		diluenteEDispositivo__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		diluenteEDispositivo__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		diluenteEDispositivo__root.transform = CGAffineTransform(rotationAngle: 0.000)
		aplicacao.addSubview(diluenteEDispositivo__root)
		diluenteEDispositivo__root.addSubview(diluenteEDispositivo__xScale)
		diluenteEDispositivo__xScale.addSubview(diluenteEDispositivo__yScale)
		diluenteEDispositivo__yScale.addSubview(diluenteEDispositivo)
		aplicacao.addSubview(diluenteEDispositivo__root)
		viewsByName["Diluente e dispositivo__root"] = diluenteEDispositivo__root
		viewsByName["Diluente e dispositivo__xScale"] = diluenteEDispositivo__xScale
		viewsByName["Diluente e dispositivo__yScale"] = diluenteEDispositivo__yScale
		viewsByName["Diluente e dispositivo"] = diluenteEDispositivo

		let diluenteEDispositivoVirado__root = TutorialPasso3PassthroughView()
		let diluenteEDispositivoVirado__xScale = TutorialPasso3PassthroughView()
		let diluenteEDispositivoVirado__yScale = TutorialPasso3PassthroughView()
		let diluenteEDispositivoVirado = UIImageView()
		let imgDiluenteEDispositivoVirado = UIImage(named:"Diluente e dispositivo virado.png", in: bundle, compatibleWith: nil)
		if imgDiluenteEDispositivoVirado == nil {
			print("** Warning: Could not create image from 'Diluente e dispositivo virado.png'")
		}
		diluenteEDispositivoVirado.image = imgDiluenteEDispositivoVirado
		diluenteEDispositivoVirado.contentMode = .center
		diluenteEDispositivoVirado.bounds = CGRect(x:0, y:0, width:238.0, height:404.0)
		diluenteEDispositivoVirado__root.layer.position = CGPoint(x:119.000, y:202.000)
		diluenteEDispositivoVirado__root.alpha = 0.00
		diluenteEDispositivoVirado__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		diluenteEDispositivoVirado__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		diluenteEDispositivoVirado__root.transform = CGAffineTransform(rotationAngle: 0.000)
		aplicacao.addSubview(diluenteEDispositivoVirado__root)
		diluenteEDispositivoVirado__root.addSubview(diluenteEDispositivoVirado__xScale)
		diluenteEDispositivoVirado__xScale.addSubview(diluenteEDispositivoVirado__yScale)
		diluenteEDispositivoVirado__yScale.addSubview(diluenteEDispositivoVirado)
		aplicacao.addSubview(diluenteEDispositivoVirado__root)
		viewsByName["Diluente e dispositivo virado__root"] = diluenteEDispositivoVirado__root
		viewsByName["Diluente e dispositivo virado__xScale"] = diluenteEDispositivoVirado__xScale
		viewsByName["Diluente e dispositivo virado__yScale"] = diluenteEDispositivoVirado__yScale
		viewsByName["Diluente e dispositivo virado"] = diluenteEDispositivoVirado

		let rodar__root = TutorialPasso3PassthroughView()
		let rodar__xScale = TutorialPasso3PassthroughView()
		let rodar__yScale = TutorialPasso3PassthroughView()
		let rodar = UIImageView()
		let imgRodar = UIImage(named:"Rodar.png", in: bundle, compatibleWith: nil)
		if imgRodar == nil {
			print("** Warning: Could not create image from 'Rodar.png'")
		}
		rodar.image = imgRodar
		rodar.contentMode = .center
		rodar.bounds = CGRect(x:0, y:0, width:102.0, height:39.0)
		rodar__root.layer.position = CGPoint(x:207.362, y:421.759)
		rodar__root.alpha = 0.00
		rodar__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		rodar__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		rodar__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(rodar__root)
		rodar__root.addSubview(rodar__xScale)
		rodar__xScale.addSubview(rodar__yScale)
		rodar__yScale.addSubview(rodar)
		__scaling__.addSubview(rodar__root)
		viewsByName["Rodar__root"] = rodar__root
		viewsByName["Rodar__xScale"] = rodar__xScale
		viewsByName["Rodar__yScale"] = rodar__yScale
		viewsByName["Rodar"] = rodar

		self.viewsByName = viewsByName
	}

	// - MARK: Passo3

	func addPasso3Animation() {
		addPasso3Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addPasso3Animation(completion: ((Bool) -> Void)?) {
		addPasso3Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addPasso3Animation(removedOnCompletion: Bool) {
		addPasso3Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addPasso3Animation(removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addPasso3Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addPasso3Animation(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
		let instantTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 11.000
			representativeAnimation.delegate = self
			self.layer.add(representativeAnimation, forKey: "Passo3")
			self.animationCompletions[layer.animation(forKey: "Passo3")!] = complete
		}

		let diluenteEDispositivoRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		diluenteEDispositivoRotationAnimation.duration = 11.000
		diluenteEDispositivoRotationAnimation.values = [0.000, 0.000, 3.142, 3.142] as [Float]
		diluenteEDispositivoRotationAnimation.keyTimes = [0.000, 0.014, 0.105, 1.000] as [NSNumber]
		diluenteEDispositivoRotationAnimation.timingFunctions = [linearTiming, easeInOutTiming, linearTiming]
		diluenteEDispositivoRotationAnimation.beginTime = beginTime
		diluenteEDispositivoRotationAnimation.fillMode = fillMode
		diluenteEDispositivoRotationAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo__root"]?.layer.add(diluenteEDispositivoRotationAnimation, forKey:"Passo3_Rotation")

		let diluenteEDispositivoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		diluenteEDispositivoOpacityAnimation.duration = 11.000
		diluenteEDispositivoOpacityAnimation.values = [1.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		diluenteEDispositivoOpacityAnimation.keyTimes = [0.000, 0.136, 0.182, 0.182, 1.000] as [NSNumber]
		diluenteEDispositivoOpacityAnimation.timingFunctions = [linearTiming, instantTiming, instantTiming, linearTiming]
		diluenteEDispositivoOpacityAnimation.beginTime = beginTime
		diluenteEDispositivoOpacityAnimation.fillMode = fillMode
		diluenteEDispositivoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo__root"]?.layer.add(diluenteEDispositivoOpacityAnimation, forKey:"Passo3_Opacity")

		let diluenteEDispositivoScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		diluenteEDispositivoScaleXAnimation.duration = 11.000
		diluenteEDispositivoScaleXAnimation.values = [1.000, 1.000, 0.800, 0.800] as [Float]
		diluenteEDispositivoScaleXAnimation.keyTimes = [0.000, 0.105, 0.182, 1.000] as [NSNumber]
		diluenteEDispositivoScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		diluenteEDispositivoScaleXAnimation.beginTime = beginTime
		diluenteEDispositivoScaleXAnimation.fillMode = fillMode
		diluenteEDispositivoScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo__xScale"]?.layer.add(diluenteEDispositivoScaleXAnimation, forKey:"Passo3_ScaleX")

		let diluenteEDispositivoScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		diluenteEDispositivoScaleYAnimation.duration = 11.000
		diluenteEDispositivoScaleYAnimation.values = [1.000, 1.000, 0.800, 0.800] as [Float]
		diluenteEDispositivoScaleYAnimation.keyTimes = [0.000, 0.105, 0.182, 1.000] as [NSNumber]
		diluenteEDispositivoScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		diluenteEDispositivoScaleYAnimation.beginTime = beginTime
		diluenteEDispositivoScaleYAnimation.fillMode = fillMode
		diluenteEDispositivoScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo__yScale"]?.layer.add(diluenteEDispositivoScaleYAnimation, forKey:"Passo3_ScaleY")

		let diluenteEDispositivoTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		diluenteEDispositivoTranslationXAnimation.duration = 11.000
		diluenteEDispositivoTranslationXAnimation.values = [0.000, 0.000, 0.000] as [Float]
		diluenteEDispositivoTranslationXAnimation.keyTimes = [0.000, 0.105, 1.000] as [NSNumber]
		diluenteEDispositivoTranslationXAnimation.timingFunctions = [linearTiming, linearTiming]
		diluenteEDispositivoTranslationXAnimation.beginTime = beginTime
		diluenteEDispositivoTranslationXAnimation.fillMode = fillMode
		diluenteEDispositivoTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo__root"]?.layer.add(diluenteEDispositivoTranslationXAnimation, forKey:"Passo3_TranslationX")

		let diluenteEDispositivoTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		diluenteEDispositivoTranslationYAnimation.duration = 11.000
		diluenteEDispositivoTranslationYAnimation.values = [0.000, 0.000, -100.000, -100.000] as [Float]
		diluenteEDispositivoTranslationYAnimation.keyTimes = [0.000, 0.105, 0.182, 1.000] as [NSNumber]
		diluenteEDispositivoTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		diluenteEDispositivoTranslationYAnimation.beginTime = beginTime
		diluenteEDispositivoTranslationYAnimation.fillMode = fillMode
		diluenteEDispositivoTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo__root"]?.layer.add(diluenteEDispositivoTranslationYAnimation, forKey:"Passo3_TranslationY")

		let rodarOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		rodarOpacityAnimation.duration = 11.000
		rodarOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000, 0.000] as [Float]
		rodarOpacityAnimation.keyTimes = [0.000, 0.591, 0.636, 1.000, 1.000] as [NSNumber]
		rodarOpacityAnimation.timingFunctions = [linearTiming, linearTiming, instantTiming, instantTiming]
		rodarOpacityAnimation.beginTime = beginTime
		rodarOpacityAnimation.fillMode = fillMode
		rodarOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Rodar__root"]?.layer.add(rodarOpacityAnimation, forKey:"Passo3_Opacity")

		let produtoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		produtoOpacityAnimation.duration = 11.000
		produtoOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		produtoOpacityAnimation.keyTimes = [0.000, 0.191, 0.273, 1.000] as [NSNumber]
		produtoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		produtoOpacityAnimation.beginTime = beginTime
		produtoOpacityAnimation.fillMode = fillMode
		produtoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Produto__root"]?.layer.add(produtoOpacityAnimation, forKey:"Passo3_Opacity")

		let aplicacaoRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		aplicacaoRotationAnimation.duration = 11.000
		aplicacaoRotationAnimation.values = [0.000, 0.000, -0.259, 0.262, -0.262, 0.262, 0.000] as [Float]
		aplicacaoRotationAnimation.keyTimes = [0.000, 0.591, 0.636, 0.727, 0.818, 0.909, 1.000] as [NSNumber]
		aplicacaoRotationAnimation.timingFunctions = [linearTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming]
		aplicacaoRotationAnimation.beginTime = beginTime
		aplicacaoRotationAnimation.fillMode = fillMode
		aplicacaoRotationAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Aplicacao__root"]?.layer.add(aplicacaoRotationAnimation, forKey:"Passo3_Rotation")

		let aplicacaoTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		aplicacaoTranslationXAnimation.duration = 11.000
		aplicacaoTranslationXAnimation.values = [0.000, 0.000, 0.000] as [Float]
		aplicacaoTranslationXAnimation.keyTimes = [0.000, 0.545, 1.000] as [NSNumber]
		aplicacaoTranslationXAnimation.timingFunctions = [linearTiming, linearTiming]
		aplicacaoTranslationXAnimation.beginTime = beginTime
		aplicacaoTranslationXAnimation.fillMode = fillMode
		aplicacaoTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Aplicacao__root"]?.layer.add(aplicacaoTranslationXAnimation, forKey:"Passo3_TranslationX")

		let aplicacaoTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		aplicacaoTranslationYAnimation.duration = 11.000
		aplicacaoTranslationYAnimation.values = [0.000, 0.000, -30.000, -30.000] as [Float]
		aplicacaoTranslationYAnimation.keyTimes = [0.000, 0.545, 0.591, 1.000] as [NSNumber]
		aplicacaoTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		aplicacaoTranslationYAnimation.beginTime = beginTime
		aplicacaoTranslationYAnimation.fillMode = fillMode
		aplicacaoTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Aplicacao__root"]?.layer.add(aplicacaoTranslationYAnimation, forKey:"Passo3_TranslationY")

		let setaParaBaixoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		setaParaBaixoOpacityAnimation.duration = 11.000
		setaParaBaixoOpacityAnimation.values = [0.000, 0.000, 1.000, 0.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		setaParaBaixoOpacityAnimation.keyTimes = [0.000, 0.273, 0.364, 0.409, 0.455, 0.500, 0.500, 1.000] as [NSNumber]
		setaParaBaixoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, instantTiming, instantTiming, linearTiming]
		setaParaBaixoOpacityAnimation.beginTime = beginTime
		setaParaBaixoOpacityAnimation.fillMode = fillMode
		setaParaBaixoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seta para baixo__root"]?.layer.add(setaParaBaixoOpacityAnimation, forKey:"Passo3_Opacity")

		let diluenteEDispositivoViradoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		diluenteEDispositivoViradoOpacityAnimation.duration = 11.000
		diluenteEDispositivoViradoOpacityAnimation.values = [0.000, 0.000, 0.000, 1.000, 1.000] as [Float]
		diluenteEDispositivoViradoOpacityAnimation.keyTimes = [0.000, 0.136, 0.182, 0.182, 1.000] as [NSNumber]
		diluenteEDispositivoViradoOpacityAnimation.timingFunctions = [linearTiming, instantTiming, instantTiming, linearTiming]
		diluenteEDispositivoViradoOpacityAnimation.beginTime = beginTime
		diluenteEDispositivoViradoOpacityAnimation.fillMode = fillMode
		diluenteEDispositivoViradoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo virado__root"]?.layer.add(diluenteEDispositivoViradoOpacityAnimation, forKey:"Passo3_Opacity")

		let diluenteEDispositivoViradoScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		diluenteEDispositivoViradoScaleXAnimation.duration = 11.000
		diluenteEDispositivoViradoScaleXAnimation.values = [1.000, 1.000, 0.800, 0.800] as [Float]
		diluenteEDispositivoViradoScaleXAnimation.keyTimes = [0.000, 0.105, 0.136, 1.000] as [NSNumber]
		diluenteEDispositivoViradoScaleXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		diluenteEDispositivoViradoScaleXAnimation.beginTime = beginTime
		diluenteEDispositivoViradoScaleXAnimation.fillMode = fillMode
		diluenteEDispositivoViradoScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo virado__xScale"]?.layer.add(diluenteEDispositivoViradoScaleXAnimation, forKey:"Passo3_ScaleX")

		let diluenteEDispositivoViradoScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		diluenteEDispositivoViradoScaleYAnimation.duration = 11.000
		diluenteEDispositivoViradoScaleYAnimation.values = [1.000, 1.000, 0.800, 0.800] as [Float]
		diluenteEDispositivoViradoScaleYAnimation.keyTimes = [0.000, 0.105, 0.136, 1.000] as [NSNumber]
		diluenteEDispositivoViradoScaleYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		diluenteEDispositivoViradoScaleYAnimation.beginTime = beginTime
		diluenteEDispositivoViradoScaleYAnimation.fillMode = fillMode
		diluenteEDispositivoViradoScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo virado__yScale"]?.layer.add(diluenteEDispositivoViradoScaleYAnimation, forKey:"Passo3_ScaleY")

		let diluenteEDispositivoViradoTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		diluenteEDispositivoViradoTranslationXAnimation.duration = 11.000
		diluenteEDispositivoViradoTranslationXAnimation.values = [0.000, 0.000, 5.000, 5.000, 5.000] as [Float]
		diluenteEDispositivoViradoTranslationXAnimation.keyTimes = [0.000, 0.105, 0.182, 0.455, 1.000] as [NSNumber]
		diluenteEDispositivoViradoTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		diluenteEDispositivoViradoTranslationXAnimation.beginTime = beginTime
		diluenteEDispositivoViradoTranslationXAnimation.fillMode = fillMode
		diluenteEDispositivoViradoTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo virado__root"]?.layer.add(diluenteEDispositivoViradoTranslationXAnimation, forKey:"Passo3_TranslationX")

		let diluenteEDispositivoViradoTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		diluenteEDispositivoViradoTranslationYAnimation.duration = 11.000
		diluenteEDispositivoViradoTranslationYAnimation.values = [0.000, 0.000, -100.000, -94.000, -94.000, -41.000, -41.000] as [Float]
		diluenteEDispositivoViradoTranslationYAnimation.keyTimes = [0.000, 0.105, 0.136, 0.182, 0.455, 0.500, 1.000] as [NSNumber]
		diluenteEDispositivoViradoTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, overshootTiming, linearTiming]
		diluenteEDispositivoViradoTranslationYAnimation.beginTime = beginTime
		diluenteEDispositivoViradoTranslationYAnimation.fillMode = fillMode
		diluenteEDispositivoViradoTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente e dispositivo virado__root"]?.layer.add(diluenteEDispositivoViradoTranslationYAnimation, forKey:"Passo3_TranslationY")
	}

	func removePasso3Animation() {
		self.layer.removeAnimation(forKey: "Passo3")
		self.viewsByName["Diluente e dispositivo__root"]?.layer.removeAnimation(forKey: "Passo3_Rotation")
		self.viewsByName["Diluente e dispositivo__root"]?.layer.removeAnimation(forKey: "Passo3_Opacity")
		self.viewsByName["Diluente e dispositivo__xScale"]?.layer.removeAnimation(forKey: "Passo3_ScaleX")
		self.viewsByName["Diluente e dispositivo__yScale"]?.layer.removeAnimation(forKey: "Passo3_ScaleY")
		self.viewsByName["Diluente e dispositivo__root"]?.layer.removeAnimation(forKey: "Passo3_TranslationX")
		self.viewsByName["Diluente e dispositivo__root"]?.layer.removeAnimation(forKey: "Passo3_TranslationY")
		self.viewsByName["Rodar__root"]?.layer.removeAnimation(forKey: "Passo3_Opacity")
		self.viewsByName["Produto__root"]?.layer.removeAnimation(forKey: "Passo3_Opacity")
		self.viewsByName["Aplicacao__root"]?.layer.removeAnimation(forKey: "Passo3_Rotation")
		self.viewsByName["Aplicacao__root"]?.layer.removeAnimation(forKey: "Passo3_TranslationX")
		self.viewsByName["Aplicacao__root"]?.layer.removeAnimation(forKey: "Passo3_TranslationY")
		self.viewsByName["Seta para baixo__root"]?.layer.removeAnimation(forKey: "Passo3_Opacity")
		self.viewsByName["Diluente e dispositivo virado__root"]?.layer.removeAnimation(forKey: "Passo3_Opacity")
		self.viewsByName["Diluente e dispositivo virado__xScale"]?.layer.removeAnimation(forKey: "Passo3_ScaleX")
		self.viewsByName["Diluente e dispositivo virado__yScale"]?.layer.removeAnimation(forKey: "Passo3_ScaleY")
		self.viewsByName["Diluente e dispositivo virado__root"]?.layer.removeAnimation(forKey: "Passo3_TranslationX")
		self.viewsByName["Diluente e dispositivo virado__root"]?.layer.removeAnimation(forKey: "Passo3_TranslationY")
	}

	// MARK: CAAnimationDelegate
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValue(forKey: anim)
			completion(flag)
		}
	}

	func removeAllAnimations() {
		for subview in viewsByName.values {
			subview.layer.removeAllAnimations()
		}
		self.layer.removeAnimation(forKey: "Passo3")
	}
}