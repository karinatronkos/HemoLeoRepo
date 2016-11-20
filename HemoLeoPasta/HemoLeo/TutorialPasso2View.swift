//
// TutorialPasso2View.swift
// Generated by Core Animator version 1.3.2 on 17/11/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

private class TutorialPasso2PassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class TutorialPasso2View : UIView, CAAnimationDelegate {


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

		let diluente__root = TutorialPasso2PassthroughView()
		let diluente__xScale = TutorialPasso2PassthroughView()
		let diluente__yScale = TutorialPasso2PassthroughView()
		let diluente = UIImageView()
		let imgDiluente = UIImage(named:"Diluente.png", in: bundle, compatibleWith: nil)
		if imgDiluente == nil {
			print("** Warning: Could not create image from 'Diluente.png'")
		}
		diluente.image = imgDiluente
		diluente.contentMode = .center
		diluente.bounds = CGRect(x:0, y:0, width:238.0, height:340.0)
		diluente__root.layer.position = CGPoint(x:209.000, y:340.550)
		diluente__root.alpha = 0.00
		diluente__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		diluente__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		diluente__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(diluente__root)
		diluente__root.addSubview(diluente__xScale)
		diluente__xScale.addSubview(diluente__yScale)
		diluente__yScale.addSubview(diluente)
		__scaling__.addSubview(diluente__root)
		viewsByName["Diluente__root"] = diluente__root
		viewsByName["Diluente__xScale"] = diluente__xScale
		viewsByName["Diluente__yScale"] = diluente__yScale
		viewsByName["Diluente"] = diluente

		let setaParaCima__root = TutorialPasso2PassthroughView()
		let setaParaCima__xScale = TutorialPasso2PassthroughView()
		let setaParaCima__yScale = TutorialPasso2PassthroughView()
		let setaParaCima = UIImageView()
		let imgSetaParaCima = UIImage(named:"Seta para cima.png", in: bundle, compatibleWith: nil)
		if imgSetaParaCima == nil {
			print("** Warning: Could not create image from 'Seta para cima.png'")
		}
		setaParaCima.image = imgSetaParaCima
		setaParaCima.contentMode = .center
		setaParaCima.bounds = CGRect(x:0, y:0, width:34.0, height:71.0)
		setaParaCima__root.layer.position = CGPoint(x:319.325, y:115.270)
		setaParaCima__root.alpha = 0.00
		setaParaCima__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		setaParaCima__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		setaParaCima__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(setaParaCima__root)
		setaParaCima__root.addSubview(setaParaCima__xScale)
		setaParaCima__xScale.addSubview(setaParaCima__yScale)
		setaParaCima__yScale.addSubview(setaParaCima)
		__scaling__.addSubview(setaParaCima__root)
		viewsByName["Seta para cima__root"] = setaParaCima__root
		viewsByName["Seta para cima__xScale"] = setaParaCima__xScale
		viewsByName["Seta para cima__yScale"] = setaParaCima__yScale
		viewsByName["Seta para cima"] = setaParaCima

		let setaParaBaixo__root = TutorialPasso2PassthroughView()
		let setaParaBaixo__xScale = TutorialPasso2PassthroughView()
		let setaParaBaixo__yScale = TutorialPasso2PassthroughView()
		let setaParaBaixo = UIImageView()
		let imgSetaParaBaixo = UIImage(named:"Seta para baixo.png", in: bundle, compatibleWith: nil)
		if imgSetaParaBaixo == nil {
			print("** Warning: Could not create image from 'Seta para baixo.png'")
		}
		setaParaBaixo.image = imgSetaParaBaixo
		setaParaBaixo.contentMode = .center
		setaParaBaixo.bounds = CGRect(x:0, y:0, width:34.0, height:71.0)
		setaParaBaixo__root.layer.position = CGPoint(x:103.047, y:227.000)
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

		let setaAbrir__root = TutorialPasso2PassthroughView()
		let setaAbrir__xScale = TutorialPasso2PassthroughView()
		let setaAbrir__yScale = TutorialPasso2PassthroughView()
		let setaAbrir = UIImageView()
		let imgSetaAbrir = UIImage(named:"Seta abrir.png", in: bundle, compatibleWith: nil)
		if imgSetaAbrir == nil {
			print("** Warning: Could not create image from 'Seta abrir.png'")
		}
		setaAbrir.image = imgSetaAbrir
		setaAbrir.contentMode = .center
		setaAbrir.bounds = CGRect(x:0, y:0, width:55.0, height:64.0)
		setaAbrir__root.layer.position = CGPoint(x:118.776, y:89.806)
		setaAbrir__root.alpha = 0.00
		setaAbrir__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		setaAbrir__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		setaAbrir__root.transform = CGAffineTransform(rotationAngle: 0.732)
		__scaling__.addSubview(setaAbrir__root)
		setaAbrir__root.addSubview(setaAbrir__xScale)
		setaAbrir__xScale.addSubview(setaAbrir__yScale)
		setaAbrir__yScale.addSubview(setaAbrir)
		__scaling__.addSubview(setaAbrir__root)
		viewsByName["Seta abrir__root"] = setaAbrir__root
		viewsByName["Seta abrir__xScale"] = setaAbrir__xScale
		viewsByName["Seta abrir__yScale"] = setaAbrir__yScale
		viewsByName["Seta abrir"] = setaAbrir

		let dispoVirado__root = TutorialPasso2PassthroughView()
		let dispoVirado__xScale = TutorialPasso2PassthroughView()
		let dispoVirado__yScale = TutorialPasso2PassthroughView()
		let dispoVirado = UIView()
		dispoVirado.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		dispoVirado__root.layer.position = CGPoint(x:204.723, y:234.000)
		dispoVirado__root.alpha = 0.00
		dispoVirado__xScale.transform = CGAffineTransform(scaleX: 1.01, y: 1.00)
		dispoVirado__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.01)
		dispoVirado__root.transform = CGAffineTransform(rotationAngle: 3.142)
		__scaling__.addSubview(dispoVirado__root)
		dispoVirado__root.addSubview(dispoVirado__xScale)
		dispoVirado__xScale.addSubview(dispoVirado__yScale)
		dispoVirado__yScale.addSubview(dispoVirado)
		__scaling__.addSubview(dispoVirado__root)
		viewsByName["Dispo virado__root"] = dispoVirado__root
		viewsByName["Dispo virado__xScale"] = dispoVirado__xScale
		viewsByName["Dispo virado__yScale"] = dispoVirado__yScale
		viewsByName["Dispo virado"] = dispoVirado

		let dispositivoVirado__root = TutorialPasso2PassthroughView()
		let dispositivoVirado__xScale = TutorialPasso2PassthroughView()
		let dispositivoVirado__yScale = TutorialPasso2PassthroughView()
		let dispositivoVirado = UIImageView()
		let imgDispositivoVirado = UIImage(named:"Dispositivo virado.png", in: bundle, compatibleWith: nil)
		if imgDispositivoVirado == nil {
			print("** Warning: Could not create image from 'Dispositivo virado.png'")
		}
		dispositivoVirado.image = imgDispositivoVirado
		dispositivoVirado.contentMode = .center
		dispositivoVirado.bounds = CGRect(x:0, y:0, width:137.0, height:215.0)
		dispositivoVirado__root.layer.position = CGPoint(x:178.211, y:202.000)
		dispositivoVirado__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		dispositivoVirado__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		dispositivoVirado__root.transform = CGAffineTransform(rotationAngle: 0.000)
		dispoVirado.addSubview(dispositivoVirado__root)
		dispositivoVirado__root.addSubview(dispositivoVirado__xScale)
		dispositivoVirado__xScale.addSubview(dispositivoVirado__yScale)
		dispositivoVirado__yScale.addSubview(dispositivoVirado)
		dispoVirado.addSubview(dispositivoVirado__root)
		viewsByName["Dispositivo virado__root"] = dispositivoVirado__root
		viewsByName["Dispositivo virado__xScale"] = dispositivoVirado__xScale
		viewsByName["Dispositivo virado__yScale"] = dispositivoVirado__yScale
		viewsByName["Dispositivo virado"] = dispositivoVirado

		let embalagemVirada__root = TutorialPasso2PassthroughView()
		let embalagemVirada__xScale = TutorialPasso2PassthroughView()
		let embalagemVirada__yScale = TutorialPasso2PassthroughView()
		let embalagemVirada = UIImageView()
		let imgEmbalagemVirada = UIImage(named:"embalagem virada.png", in: bundle, compatibleWith: nil)
		if imgEmbalagemVirada == nil {
			print("** Warning: Could not create image from 'embalagem virada.png'")
		}
		embalagemVirada.image = imgEmbalagemVirada
		embalagemVirada.contentMode = .center
		embalagemVirada.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		embalagemVirada__root.layer.position = CGPoint(x:181.000, y:202.000)
		embalagemVirada__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		embalagemVirada__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		embalagemVirada__root.transform = CGAffineTransform(rotationAngle: 0.000)
		dispoVirado.addSubview(embalagemVirada__root)
		embalagemVirada__root.addSubview(embalagemVirada__xScale)
		embalagemVirada__xScale.addSubview(embalagemVirada__yScale)
		embalagemVirada__yScale.addSubview(embalagemVirada)
		dispoVirado.addSubview(embalagemVirada__root)
		viewsByName["embalagem virada__root"] = embalagemVirada__root
		viewsByName["embalagem virada__xScale"] = embalagemVirada__xScale
		viewsByName["embalagem virada__yScale"] = embalagemVirada__yScale
		viewsByName["embalagem virada"] = embalagemVirada

		let tudo__root = TutorialPasso2PassthroughView()
		let tudo__xScale = TutorialPasso2PassthroughView()
		let tudo__yScale = TutorialPasso2PassthroughView()
		let tudo = UIView()
		tudo.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		tudo__root.layer.position = CGPoint(x:207.000, y:245.000)
		tudo__root.alpha = 0.00
		tudo__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tudo__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tudo__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(tudo__root)
		tudo__root.addSubview(tudo__xScale)
		tudo__xScale.addSubview(tudo__yScale)
		tudo__yScale.addSubview(tudo)
		__scaling__.addSubview(tudo__root)
		viewsByName["Tudo__root"] = tudo__root
		viewsByName["Tudo__xScale"] = tudo__xScale
		viewsByName["Tudo__yScale"] = tudo__yScale
		viewsByName["Tudo"] = tudo

		let dispositivo2__root = TutorialPasso2PassthroughView()
		let dispositivo2__xScale = TutorialPasso2PassthroughView()
		let dispositivo2__yScale = TutorialPasso2PassthroughView()
		let dispositivo2 = UIView()
		dispositivo2.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		dispositivo2__root.layer.position = CGPoint(x:181.000, y:202.000)
		dispositivo2__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		dispositivo2__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		dispositivo2__root.transform = CGAffineTransform(rotationAngle: 0.000)
		tudo.addSubview(dispositivo2__root)
		dispositivo2__root.addSubview(dispositivo2__xScale)
		dispositivo2__xScale.addSubview(dispositivo2__yScale)
		dispositivo2__yScale.addSubview(dispositivo2)
		tudo.addSubview(dispositivo2__root)
		viewsByName["Dispositivo 2__root"] = dispositivo2__root
		viewsByName["Dispositivo 2__xScale"] = dispositivo2__xScale
		viewsByName["Dispositivo 2__yScale"] = dispositivo2__yScale
		viewsByName["Dispositivo 2"] = dispositivo2

		let dispositivo__root = TutorialPasso2PassthroughView()
		let dispositivo__xScale = TutorialPasso2PassthroughView()
		let dispositivo__yScale = TutorialPasso2PassthroughView()
		let dispositivo = UIImageView()
		let imgDispositivo = UIImage(named:"Dispositivo.png", in: bundle, compatibleWith: nil)
		if imgDispositivo == nil {
			print("** Warning: Could not create image from 'Dispositivo.png'")
		}
		dispositivo.image = imgDispositivo
		dispositivo.contentMode = .center
		dispositivo.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		dispositivo__root.layer.position = CGPoint(x:181.000, y:202.000)
		dispositivo__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		dispositivo__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		dispositivo__root.transform = CGAffineTransform(rotationAngle: 0.000)
		dispositivo2.addSubview(dispositivo__root)
		dispositivo__root.addSubview(dispositivo__xScale)
		dispositivo__xScale.addSubview(dispositivo__yScale)
		dispositivo__yScale.addSubview(dispositivo)
		dispositivo2.addSubview(dispositivo__root)
		viewsByName["Dispositivo__root"] = dispositivo__root
		viewsByName["Dispositivo__xScale"] = dispositivo__xScale
		viewsByName["Dispositivo__yScale"] = dispositivo__yScale
		viewsByName["Dispositivo"] = dispositivo

		let embalagem__root = TutorialPasso2PassthroughView()
		let embalagem__xScale = TutorialPasso2PassthroughView()
		let embalagem__yScale = TutorialPasso2PassthroughView()
		let embalagem = UIImageView()
		let imgEmbalagem = UIImage(named:"Embalagem.png", in: bundle, compatibleWith: nil)
		if imgEmbalagem == nil {
			print("** Warning: Could not create image from 'Embalagem.png'")
		}
		embalagem.image = imgEmbalagem
		embalagem.contentMode = .center
		embalagem.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		embalagem__root.layer.position = CGPoint(x:181.000, y:202.000)
		embalagem__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		embalagem__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		embalagem__root.transform = CGAffineTransform(rotationAngle: 0.000)
		dispositivo2.addSubview(embalagem__root)
		embalagem__root.addSubview(embalagem__xScale)
		embalagem__xScale.addSubview(embalagem__yScale)
		embalagem__yScale.addSubview(embalagem)
		dispositivo2.addSubview(embalagem__root)
		viewsByName["Embalagem__root"] = embalagem__root
		viewsByName["Embalagem__xScale"] = embalagem__xScale
		viewsByName["Embalagem__yScale"] = embalagem__yScale
		viewsByName["Embalagem"] = embalagem

		let tampaDot__root = TutorialPasso2PassthroughView()
		let tampaDot__xScale = TutorialPasso2PassthroughView()
		let tampaDot__yScale = TutorialPasso2PassthroughView()
		let tampaDot = UIImageView()
		let imgTampaDot = UIImage(named:"Tampa dot.png", in: bundle, compatibleWith: nil)
		if imgTampaDot == nil {
			print("** Warning: Could not create image from 'Tampa dot.png'")
		}
		tampaDot.image = imgTampaDot
		tampaDot.contentMode = .center
		tampaDot.bounds = CGRect(x:0, y:0, width:313.0, height:173.0)
		tampaDot__root.layer.position = CGPoint(x:169.000, y:99.267)
		tampaDot__root.alpha = 0.00
		tampaDot__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tampaDot__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tampaDot__root.transform = CGAffineTransform(rotationAngle: 0.000)
		tudo.addSubview(tampaDot__root)
		tampaDot__root.addSubview(tampaDot__xScale)
		tampaDot__xScale.addSubview(tampaDot__yScale)
		tampaDot__yScale.addSubview(tampaDot)
		tudo.addSubview(tampaDot__root)
		viewsByName["Tampa dot__root"] = tampaDot__root
		viewsByName["Tampa dot__xScale"] = tampaDot__xScale
		viewsByName["Tampa dot__yScale"] = tampaDot__yScale
		viewsByName["Tampa dot"] = tampaDot

		let tampa__root = TutorialPasso2PassthroughView()
		let tampa__xScale = TutorialPasso2PassthroughView()
		let tampa__yScale = TutorialPasso2PassthroughView()
		let tampa = UIImageView()
		let imgTampa = UIImage(named:"Tampa.png", in: bundle, compatibleWith: nil)
		if imgTampa == nil {
			print("** Warning: Could not create image from 'Tampa.png'")
		}
		tampa.image = imgTampa
		tampa.contentMode = .center
		tampa.bounds = CGRect(x:0, y:0, width:313.0, height:173.0)
		tampa__root.layer.position = CGPoint(x:169.000, y:98.763)
		tampa__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tampa__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tampa__root.transform = CGAffineTransform(rotationAngle: 0.000)
		tudo.addSubview(tampa__root)
		tampa__root.addSubview(tampa__xScale)
		tampa__xScale.addSubview(tampa__yScale)
		tampa__yScale.addSubview(tampa)
		tudo.addSubview(tampa__root)
		viewsByName["Tampa__root"] = tampa__root
		viewsByName["Tampa__xScale"] = tampa__xScale
		viewsByName["Tampa__yScale"] = tampa__yScale
		viewsByName["Tampa"] = tampa

		let tampaAberta__root = TutorialPasso2PassthroughView()
		let tampaAberta__xScale = TutorialPasso2PassthroughView()
		let tampaAberta__yScale = TutorialPasso2PassthroughView()
		let tampaAberta = UIImageView()
		let imgTampaAberta = UIImage(named:"Tampa aberta.png", in: bundle, compatibleWith: nil)
		if imgTampaAberta == nil {
			print("** Warning: Could not create image from 'Tampa aberta.png'")
		}
		tampaAberta.image = imgTampaAberta
		tampaAberta.contentMode = .center
		tampaAberta.bounds = CGRect(x:0, y:0, width:313.0, height:173.0)
		tampaAberta__root.layer.position = CGPoint(x:169.000, y:97.500)
		tampaAberta__root.alpha = 0.00
		tampaAberta__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tampaAberta__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		tampaAberta__root.transform = CGAffineTransform(rotationAngle: 0.000)
		tudo.addSubview(tampaAberta__root)
		tampaAberta__root.addSubview(tampaAberta__xScale)
		tampaAberta__xScale.addSubview(tampaAberta__yScale)
		tampaAberta__yScale.addSubview(tampaAberta)
		tudo.addSubview(tampaAberta__root)
		viewsByName["Tampa aberta__root"] = tampaAberta__root
		viewsByName["Tampa aberta__xScale"] = tampaAberta__xScale
		viewsByName["Tampa aberta__yScale"] = tampaAberta__yScale
		viewsByName["Tampa aberta"] = tampaAberta

		self.viewsByName = viewsByName
	}

	// - MARK: Passo2

	func addPasso2Animation() {
		addPasso2Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addPasso2Animation(completion: ((Bool) -> Void)?) {
		addPasso2Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addPasso2Animation(removedOnCompletion: Bool) {
		addPasso2Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addPasso2Animation(removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addPasso2Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addPasso2Animation(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let instantTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 14.000
			representativeAnimation.delegate = self
			self.layer.add(representativeAnimation, forKey: "Passo2")
			self.animationCompletions[layer.animation(forKey: "Passo2")!] = complete
		}

		let dispoViradoRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		dispoViradoRotationAnimation.duration = 14.000
		dispoViradoRotationAnimation.values = [3.142, 3.142, 3.142, 0.000, 0.000] as [Float]
		dispoViradoRotationAnimation.keyTimes = [0.000, 0.350, 0.350, 0.407, 1.000] as [NSNumber]
		dispoViradoRotationAnimation.timingFunctions = [instantTiming, instantTiming, linearTiming, linearTiming]
		dispoViradoRotationAnimation.beginTime = beginTime
		dispoViradoRotationAnimation.fillMode = fillMode
		dispoViradoRotationAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Dispo virado__root"]?.layer.add(dispoViradoRotationAnimation, forKey:"Passo2_Rotation")

		let dispoViradoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		dispoViradoOpacityAnimation.duration = 14.000
		dispoViradoOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		dispoViradoOpacityAnimation.keyTimes = [0.000, 0.350, 0.407, 1.000] as [NSNumber]
		dispoViradoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		dispoViradoOpacityAnimation.beginTime = beginTime
		dispoViradoOpacityAnimation.fillMode = fillMode
		dispoViradoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Dispo virado__root"]?.layer.add(dispoViradoOpacityAnimation, forKey:"Passo2_Opacity")

		let dispoViradoTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		dispoViradoTranslationXAnimation.duration = 14.000
		dispoViradoTranslationXAnimation.values = [0.000, 0.000, 0.000, 0.000] as [Float]
		dispoViradoTranslationXAnimation.keyTimes = [0.000, 0.429, 0.682, 1.000] as [NSNumber]
		dispoViradoTranslationXAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		dispoViradoTranslationXAnimation.beginTime = beginTime
		dispoViradoTranslationXAnimation.fillMode = fillMode
		dispoViradoTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Dispo virado__root"]?.layer.add(dispoViradoTranslationXAnimation, forKey:"Passo2_TranslationX")

		let dispoViradoTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		dispoViradoTranslationYAnimation.duration = 14.000
		dispoViradoTranslationYAnimation.values = [0.000, 0.000, -110.000, -110.000, -100.000, -25.000, -25.000] as [Float]
		dispoViradoTranslationYAnimation.keyTimes = [0.000, 0.429, 0.468, 0.682, 0.682, 0.721, 1.000] as [NSNumber]
		dispoViradoTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, instantTiming, instantTiming, linearTiming, linearTiming]
		dispoViradoTranslationYAnimation.beginTime = beginTime
		dispoViradoTranslationYAnimation.fillMode = fillMode
		dispoViradoTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Dispo virado__root"]?.layer.add(dispoViradoTranslationYAnimation, forKey:"Passo2_TranslationY")

		let setaParaBaixoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		setaParaBaixoOpacityAnimation.duration = 14.000
		setaParaBaixoOpacityAnimation.values = [0.000, 0.000, 1.000, 0.000, 1.000, 0.000, 0.000] as [Float]
		setaParaBaixoOpacityAnimation.keyTimes = [0.000, 0.507, 0.571, 0.607, 0.679, 0.714, 1.000] as [NSNumber]
		setaParaBaixoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		setaParaBaixoOpacityAnimation.beginTime = beginTime
		setaParaBaixoOpacityAnimation.fillMode = fillMode
		setaParaBaixoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seta para baixo__root"]?.layer.add(setaParaBaixoOpacityAnimation, forKey:"Passo2_Opacity")

		let tampaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		tampaOpacityAnimation.duration = 14.000
		tampaOpacityAnimation.values = [1.000, 1.000, 0.000, 0.000] as [Float]
		tampaOpacityAnimation.keyTimes = [0.000, 0.200, 0.218, 1.000] as [NSNumber]
		tampaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		tampaOpacityAnimation.beginTime = beginTime
		tampaOpacityAnimation.fillMode = fillMode
		tampaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Tampa__root"]?.layer.add(tampaOpacityAnimation, forKey:"Passo2_Opacity")

		let tampaAbertaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		tampaAbertaOpacityAnimation.duration = 14.000
		tampaAbertaOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		tampaAbertaOpacityAnimation.keyTimes = [0.000, 0.186, 0.218, 0.261, 0.293, 1.000] as [NSNumber]
		tampaAbertaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		tampaAbertaOpacityAnimation.beginTime = beginTime
		tampaAbertaOpacityAnimation.fillMode = fillMode
		tampaAbertaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Tampa aberta__root"]?.layer.add(tampaAbertaOpacityAnimation, forKey:"Passo2_Opacity")

		let setaParaCimaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		setaParaCimaOpacityAnimation.duration = 14.000
		setaParaCimaOpacityAnimation.values = [0.000, 0.000, 1.000, 0.000, 1.000, 0.000] as [Float]
		setaParaCimaOpacityAnimation.keyTimes = [0.000, 0.786, 0.857, 0.893, 0.929, 1.000] as [NSNumber]
		setaParaCimaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		setaParaCimaOpacityAnimation.beginTime = beginTime
		setaParaCimaOpacityAnimation.fillMode = fillMode
		setaParaCimaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seta para cima__root"]?.layer.add(setaParaCimaOpacityAnimation, forKey:"Passo2_Opacity")

		let tampaDotOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		tampaDotOpacityAnimation.duration = 14.000
		tampaDotOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		tampaDotOpacityAnimation.keyTimes = [0.000, 0.168, 0.184, 1.000] as [NSNumber]
		tampaDotOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		tampaDotOpacityAnimation.beginTime = beginTime
		tampaDotOpacityAnimation.fillMode = fillMode
		tampaDotOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Tampa dot__root"]?.layer.add(tampaDotOpacityAnimation, forKey:"Passo2_Opacity")

		let setaAbrirOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		setaAbrirOpacityAnimation.duration = 14.000
		setaAbrirOpacityAnimation.values = [0.000, 0.000, 1.000, 0.000, 1.000, 0.000, 0.000] as [Float]
		setaAbrirOpacityAnimation.keyTimes = [0.000, 0.030, 0.075, 0.114, 0.157, 0.189, 1.000] as [NSNumber]
		setaAbrirOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		setaAbrirOpacityAnimation.beginTime = beginTime
		setaAbrirOpacityAnimation.fillMode = fillMode
		setaAbrirOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seta abrir__root"]?.layer.add(setaAbrirOpacityAnimation, forKey:"Passo2_Opacity")

		let diluenteOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		diluenteOpacityAnimation.duration = 14.000
		diluenteOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		diluenteOpacityAnimation.keyTimes = [0.000, 0.486, 0.507, 1.000] as [NSNumber]
		diluenteOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		diluenteOpacityAnimation.beginTime = beginTime
		diluenteOpacityAnimation.fillMode = fillMode
		diluenteOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Diluente__root"]?.layer.add(diluenteOpacityAnimation, forKey:"Passo2_Opacity")

		let embalagemViradaTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		embalagemViradaTranslationXAnimation.duration = 14.000
		embalagemViradaTranslationXAnimation.values = [0.000, 0.000, 0.000] as [Float]
		embalagemViradaTranslationXAnimation.keyTimes = [0.000, 0.936, 1.000] as [NSNumber]
		embalagemViradaTranslationXAnimation.timingFunctions = [linearTiming, linearTiming]
		embalagemViradaTranslationXAnimation.beginTime = beginTime
		embalagemViradaTranslationXAnimation.fillMode = fillMode
		embalagemViradaTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["embalagem virada__root"]?.layer.add(embalagemViradaTranslationXAnimation, forKey:"Passo2_TranslationX")

		let embalagemViradaTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		embalagemViradaTranslationYAnimation.duration = 14.000
		embalagemViradaTranslationYAnimation.values = [0.000, 0.000, -300.000] as [Float]
		embalagemViradaTranslationYAnimation.keyTimes = [0.000, 0.936, 1.000] as [NSNumber]
		embalagemViradaTranslationYAnimation.timingFunctions = [linearTiming, linearTiming]
		embalagemViradaTranslationYAnimation.beginTime = beginTime
		embalagemViradaTranslationYAnimation.fillMode = fillMode
		embalagemViradaTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["embalagem virada__root"]?.layer.add(embalagemViradaTranslationYAnimation, forKey:"Passo2_TranslationY")

		let tudoRotationAnimation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
		tudoRotationAnimation.duration = 14.000
		tudoRotationAnimation.values = [0.000, 0.000, -3.142, -3.142] as [Float]
		tudoRotationAnimation.keyTimes = [0.000, 0.350, 0.407, 1.000] as [NSNumber]
		tudoRotationAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		tudoRotationAnimation.beginTime = beginTime
		tudoRotationAnimation.fillMode = fillMode
		tudoRotationAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Tudo__root"]?.layer.add(tudoRotationAnimation, forKey:"Passo2_Rotation")

		let tudoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		tudoOpacityAnimation.duration = 14.000
		tudoOpacityAnimation.values = [0.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		tudoOpacityAnimation.keyTimes = [0.000, 0.032, 0.350, 0.407, 1.000] as [NSNumber]
		tudoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		tudoOpacityAnimation.beginTime = beginTime
		tudoOpacityAnimation.fillMode = fillMode
		tudoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Tudo__root"]?.layer.add(tudoOpacityAnimation, forKey:"Passo2_Opacity")
	}

	func removePasso2Animation() {
		self.layer.removeAnimation(forKey: "Passo2")
		self.viewsByName["Dispo virado__root"]?.layer.removeAnimation(forKey: "Passo2_Rotation")
		self.viewsByName["Dispo virado__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Dispo virado__root"]?.layer.removeAnimation(forKey: "Passo2_TranslationX")
		self.viewsByName["Dispo virado__root"]?.layer.removeAnimation(forKey: "Passo2_TranslationY")
		self.viewsByName["Seta para baixo__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Tampa__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Tampa aberta__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Seta para cima__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Tampa dot__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Seta abrir__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["Diluente__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
		self.viewsByName["embalagem virada__root"]?.layer.removeAnimation(forKey: "Passo2_TranslationX")
		self.viewsByName["embalagem virada__root"]?.layer.removeAnimation(forKey: "Passo2_TranslationY")
		self.viewsByName["Tudo__root"]?.layer.removeAnimation(forKey: "Passo2_Rotation")
		self.viewsByName["Tudo__root"]?.layer.removeAnimation(forKey: "Passo2_Opacity")
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
		self.layer.removeAnimation(forKey: "Passo2")
	}
}
