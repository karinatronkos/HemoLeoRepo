//
// TutorialPasso5View.swift
// Generated by Core Animator version 1.3.2 on 20/11/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

private class TutorialPasso5PassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class TutorialPasso5View : UIView, CAAnimationDelegate {


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

		let passo2__root = TutorialPasso5PassthroughView()
		let passo2__xScale = TutorialPasso5PassthroughView()
		let passo2__yScale = TutorialPasso5PassthroughView()
		let passo2 = UIView()
		passo2.bounds = CGRect(x:0, y:0, width:362.0, height:414.0)
		passo2__root.layer.position = CGPoint(x:207.000, y:232.020)
		passo2__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		passo2__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		passo2__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(passo2__root)
		passo2__root.addSubview(passo2__xScale)
		passo2__xScale.addSubview(passo2__yScale)
		passo2__yScale.addSubview(passo2)
		__scaling__.addSubview(passo2__root)
		viewsByName["Passo 2__root"] = passo2__root
		viewsByName["Passo 2__xScale"] = passo2__xScale
		viewsByName["Passo 2__yScale"] = passo2__yScale
		viewsByName["Passo 2"] = passo2

		let braçoComGarrote__root = TutorialPasso5PassthroughView()
		let braçoComGarrote__xScale = TutorialPasso5PassthroughView()
		let braçoComGarrote__yScale = TutorialPasso5PassthroughView()
		let braçoComGarrote = UIImageView()
		let imgBraçoComGarrote = UIImage(named:"Braço com garrote.png", in: bundle, compatibleWith: nil)
		if imgBraçoComGarrote == nil {
			print("** Warning: Could not create image from 'Braço com garrote.png'")
		}
		braçoComGarrote.image = imgBraçoComGarrote
		braçoComGarrote.contentMode = .center
		braçoComGarrote.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		braçoComGarrote__root.layer.position = CGPoint(x:181.000, y:202.000)
		braçoComGarrote__root.alpha = 0.00
		braçoComGarrote__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		braçoComGarrote__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		braçoComGarrote__root.transform = CGAffineTransform(rotationAngle: 0.000)
		passo2.addSubview(braçoComGarrote__root)
		braçoComGarrote__root.addSubview(braçoComGarrote__xScale)
		braçoComGarrote__xScale.addSubview(braçoComGarrote__yScale)
		braçoComGarrote__yScale.addSubview(braçoComGarrote)
		passo2.addSubview(braçoComGarrote__root)
		viewsByName["Braço com garrote__root"] = braçoComGarrote__root
		viewsByName["Braço com garrote__xScale"] = braçoComGarrote__xScale
		viewsByName["Braço com garrote__yScale"] = braçoComGarrote__yScale
		viewsByName["Braço com garrote"] = braçoComGarrote

		let mãoComAlcool__root = TutorialPasso5PassthroughView()
		let mãoComAlcool__xScale = TutorialPasso5PassthroughView()
		let mãoComAlcool__yScale = TutorialPasso5PassthroughView()
		let mãoComAlcool = UIImageView()
		let imgMãoComAlcool = UIImage(named:"Mão com alcool.png", in: bundle, compatibleWith: nil)
		if imgMãoComAlcool == nil {
			print("** Warning: Could not create image from 'Mão com alcool.png'")
		}
		mãoComAlcool.image = imgMãoComAlcool
		mãoComAlcool.contentMode = .center
		mãoComAlcool.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		mãoComAlcool__root.layer.position = CGPoint(x:391.000, y:212.039)
		mãoComAlcool__root.alpha = 0.00
		mãoComAlcool__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoComAlcool__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoComAlcool__root.transform = CGAffineTransform(rotationAngle: 0.000)
		passo2.addSubview(mãoComAlcool__root)
		mãoComAlcool__root.addSubview(mãoComAlcool__xScale)
		mãoComAlcool__xScale.addSubview(mãoComAlcool__yScale)
		mãoComAlcool__yScale.addSubview(mãoComAlcool)
		passo2.addSubview(mãoComAlcool__root)
		viewsByName["Mão com alcool__root"] = mãoComAlcool__root
		viewsByName["Mão com alcool__xScale"] = mãoComAlcool__xScale
		viewsByName["Mão com alcool__yScale"] = mãoComAlcool__yScale
		viewsByName["Mão com alcool"] = mãoComAlcool

		let seringaComAgulha__root = TutorialPasso5PassthroughView()
		let seringaComAgulha__xScale = TutorialPasso5PassthroughView()
		let seringaComAgulha__yScale = TutorialPasso5PassthroughView()
		let seringaComAgulha = UIView()
		seringaComAgulha.bounds = CGRect(x:0, y:0, width:396.1, height:467.5)
		seringaComAgulha__root.layer.position = CGPoint(x:198.029, y:188.443)
		seringaComAgulha__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		seringaComAgulha__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		seringaComAgulha__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(seringaComAgulha__root)
		seringaComAgulha__root.addSubview(seringaComAgulha__xScale)
		seringaComAgulha__xScale.addSubview(seringaComAgulha__yScale)
		seringaComAgulha__yScale.addSubview(seringaComAgulha)
		__scaling__.addSubview(seringaComAgulha__root)
		viewsByName["Seringa com agulha__root"] = seringaComAgulha__root
		viewsByName["Seringa com agulha__xScale"] = seringaComAgulha__xScale
		viewsByName["Seringa com agulha__yScale"] = seringaComAgulha__yScale
		viewsByName["Seringa com agulha"] = seringaComAgulha

		let seringaCheia__root = TutorialPasso5PassthroughView()
		let seringaCheia__xScale = TutorialPasso5PassthroughView()
		let seringaCheia__yScale = TutorialPasso5PassthroughView()
		let seringaCheia = UIImageView()
		let imgSeringaCheia = UIImage(named:"Seringa cheia.png", in: bundle, compatibleWith: nil)
		if imgSeringaCheia == nil {
			print("** Warning: Could not create image from 'Seringa cheia.png'")
		}
		seringaCheia.image = imgSeringaCheia
		seringaCheia.contentMode = .center
		seringaCheia.bounds = CGRect(x:0, y:0, width:336.0, height:236.0)
		seringaCheia__root.layer.position = CGPoint(x:146.253, y:163.570)
		seringaCheia__root.alpha = 0.00
		seringaCheia__xScale.transform = CGAffineTransform(scaleX: 0.81, y: 1.00)
		seringaCheia__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.81)
		seringaCheia__root.transform = CGAffineTransform(rotationAngle: 3.829)
		seringaComAgulha.addSubview(seringaCheia__root)
		seringaCheia__root.addSubview(seringaCheia__xScale)
		seringaCheia__xScale.addSubview(seringaCheia__yScale)
		seringaCheia__yScale.addSubview(seringaCheia)
		seringaComAgulha.addSubview(seringaCheia__root)
		viewsByName["Seringa cheia__root"] = seringaCheia__root
		viewsByName["Seringa cheia__xScale"] = seringaCheia__xScale
		viewsByName["Seringa cheia__yScale"] = seringaCheia__yScale
		viewsByName["Seringa cheia"] = seringaCheia

		let agulhaECapa__root = TutorialPasso5PassthroughView()
		let agulhaECapa__xScale = TutorialPasso5PassthroughView()
		let agulhaECapa__yScale = TutorialPasso5PassthroughView()
		let agulhaECapa = UIView()
		agulhaECapa.bounds = CGRect(x:0, y:0, width:292.0, height:325.7)
		agulhaECapa__root.layer.position = CGPoint(x:251.058, y:350.687)
		agulhaECapa__root.alpha = 0.00
		agulhaECapa__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		agulhaECapa__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		agulhaECapa__root.transform = CGAffineTransform(rotationAngle: 0.000)
		seringaComAgulha.addSubview(agulhaECapa__root)
		agulhaECapa__root.addSubview(agulhaECapa__xScale)
		agulhaECapa__xScale.addSubview(agulhaECapa__yScale)
		agulhaECapa__yScale.addSubview(agulhaECapa)
		seringaComAgulha.addSubview(agulhaECapa__root)
		viewsByName["Agulha e capa__root"] = agulhaECapa__root
		viewsByName["Agulha e capa__xScale"] = agulhaECapa__xScale
		viewsByName["Agulha e capa__yScale"] = agulhaECapa__yScale
		viewsByName["Agulha e capa"] = agulhaECapa

		let borboleta__root = TutorialPasso5PassthroughView()
		let borboleta__xScale = TutorialPasso5PassthroughView()
		let borboleta__yScale = TutorialPasso5PassthroughView()
		let borboleta = UIImageView()
		let imgBorboleta = UIImage(named:"Borboleta.png", in: bundle, compatibleWith: nil)
		if imgBorboleta == nil {
			print("** Warning: Could not create image from 'Borboleta.png'")
		}
		borboleta.image = imgBorboleta
		borboleta.contentMode = .center
		borboleta.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		borboleta__root.layer.position = CGPoint(x:146.097, y:162.831)
		borboleta__xScale.transform = CGAffineTransform(scaleX: 0.81, y: 1.00)
		borboleta__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.81)
		borboleta__root.transform = CGAffineTransform(rotationAngle: 0.000)
		agulhaECapa.addSubview(borboleta__root)
		borboleta__root.addSubview(borboleta__xScale)
		borboleta__xScale.addSubview(borboleta__yScale)
		borboleta__yScale.addSubview(borboleta)
		agulhaECapa.addSubview(borboleta__root)
		viewsByName["Borboleta__root"] = borboleta__root
		viewsByName["Borboleta__xScale"] = borboleta__xScale
		viewsByName["Borboleta__yScale"] = borboleta__yScale
		viewsByName["Borboleta"] = borboleta

		let capaAgulha__root = TutorialPasso5PassthroughView()
		let capaAgulha__xScale = TutorialPasso5PassthroughView()
		let capaAgulha__yScale = TutorialPasso5PassthroughView()
		let capaAgulha = UIImageView()
		let imgCapaAgulha = UIImage(named:"Capa agulha.png", in: bundle, compatibleWith: nil)
		if imgCapaAgulha == nil {
			print("** Warning: Could not create image from 'Capa agulha.png'")
		}
		capaAgulha.image = imgCapaAgulha
		capaAgulha.contentMode = .center
		capaAgulha.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		capaAgulha__root.layer.position = CGPoint(x:144.800, y:162.237)
		capaAgulha__xScale.transform = CGAffineTransform(scaleX: 0.80, y: 1.00)
		capaAgulha__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.80)
		capaAgulha__root.transform = CGAffineTransform(rotationAngle: 0.000)
		agulhaECapa.addSubview(capaAgulha__root)
		capaAgulha__root.addSubview(capaAgulha__xScale)
		capaAgulha__xScale.addSubview(capaAgulha__yScale)
		capaAgulha__yScale.addSubview(capaAgulha)
		agulhaECapa.addSubview(capaAgulha__root)
		viewsByName["Capa agulha__root"] = capaAgulha__root
		viewsByName["Capa agulha__xScale"] = capaAgulha__xScale
		viewsByName["Capa agulha__yScale"] = capaAgulha__yScale
		viewsByName["Capa agulha"] = capaAgulha

		let passo1__root = TutorialPasso5PassthroughView()
		let passo1__xScale = TutorialPasso5PassthroughView()
		let passo1__yScale = TutorialPasso5PassthroughView()
		let passo1 = UIView()
		passo1.bounds = CGRect(x:0, y:0, width:388.2, height:448.1)
		passo1__root.layer.position = CGPoint(x:219.875, y:204.950)
		passo1__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		passo1__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		passo1__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(passo1__root)
		passo1__root.addSubview(passo1__xScale)
		passo1__xScale.addSubview(passo1__yScale)
		passo1__yScale.addSubview(passo1)
		__scaling__.addSubview(passo1__root)
		viewsByName["Passo 1__root"] = passo1__root
		viewsByName["Passo 1__xScale"] = passo1__xScale
		viewsByName["Passo 1__yScale"] = passo1__yScale
		viewsByName["Passo 1"] = passo1

		let braço__root = TutorialPasso5PassthroughView()
		let braço__xScale = TutorialPasso5PassthroughView()
		let braço__yScale = TutorialPasso5PassthroughView()
		let braço = UIImageView()
		let imgBraço = UIImage(named:"Braço.png", in: bundle, compatibleWith: nil)
		if imgBraço == nil {
			print("** Warning: Could not create image from 'Braço.png'")
		}
		braço.image = imgBraço
		braço.contentMode = .center
		braço.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		braço__root.layer.position = CGPoint(x:181.000, y:246.100)
		braço__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		braço__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		braço__root.transform = CGAffineTransform(rotationAngle: 0.000)
		passo1.addSubview(braço__root)
		braço__root.addSubview(braço__xScale)
		braço__xScale.addSubview(braço__yScale)
		braço__yScale.addSubview(braço)
		passo1.addSubview(braço__root)
		viewsByName["Braço__root"] = braço__root
		viewsByName["Braço__xScale"] = braço__xScale
		viewsByName["Braço__yScale"] = braço__yScale
		viewsByName["Braço"] = braço

		let garroteP5__root = TutorialPasso5PassthroughView()
		let garroteP5__xScale = TutorialPasso5PassthroughView()
		let garroteP5__yScale = TutorialPasso5PassthroughView()
		let garroteP5 = UIImageView()
		let imgGarroteP5 = UIImage(named:"GarroteP5.png", in: bundle, compatibleWith: nil)
		if imgGarroteP5 == nil {
			print("** Warning: Could not create image from 'GarroteP5.png'")
		}
		garroteP5.image = imgGarroteP5
		garroteP5.contentMode = .center
		garroteP5.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		garroteP5__root.layer.position = CGPoint(x:181.249, y:246.100)
		garroteP5__root.alpha = 0.00
		garroteP5__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		garroteP5__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		garroteP5__root.transform = CGAffineTransform(rotationAngle: 0.000)
		passo1.addSubview(garroteP5__root)
		garroteP5__root.addSubview(garroteP5__xScale)
		garroteP5__xScale.addSubview(garroteP5__yScale)
		garroteP5__yScale.addSubview(garroteP5)
		passo1.addSubview(garroteP5__root)
		viewsByName["GarroteP5__root"] = garroteP5__root
		viewsByName["GarroteP5__xScale"] = garroteP5__xScale
		viewsByName["GarroteP5__yScale"] = garroteP5__yScale
		viewsByName["GarroteP5"] = garroteP5

		let mãoExtra__root = TutorialPasso5PassthroughView()
		let mãoExtra__xScale = TutorialPasso5PassthroughView()
		let mãoExtra__yScale = TutorialPasso5PassthroughView()
		let mãoExtra = UIImageView()
		let imgMãoExtra = UIImage(named:"Mão extra.png", in: bundle, compatibleWith: nil)
		if imgMãoExtra == nil {
			print("** Warning: Could not create image from 'Mão extra.png'")
		}
		mãoExtra.image = imgMãoExtra
		mãoExtra.contentMode = .center
		mãoExtra.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		mãoExtra__root.layer.position = CGPoint(x:182.000, y:242.971)
		mãoExtra__root.alpha = 0.00
		mãoExtra__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoExtra__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoExtra__root.transform = CGAffineTransform(rotationAngle: 0.000)
		passo1.addSubview(mãoExtra__root)
		mãoExtra__root.addSubview(mãoExtra__xScale)
		mãoExtra__xScale.addSubview(mãoExtra__yScale)
		mãoExtra__yScale.addSubview(mãoExtra)
		passo1.addSubview(mãoExtra__root)
		viewsByName["Mão extra__root"] = mãoExtra__root
		viewsByName["Mão extra__xScale"] = mãoExtra__xScale
		viewsByName["Mão extra__yScale"] = mãoExtra__yScale
		viewsByName["Mão extra"] = mãoExtra

		let veia__root = TutorialPasso5PassthroughView()
		let veia__xScale = TutorialPasso5PassthroughView()
		let veia__yScale = TutorialPasso5PassthroughView()
		let veia = UIImageView()
		let imgVeia = UIImage(named:"Veia.png", in: bundle, compatibleWith: nil)
		if imgVeia == nil {
			print("** Warning: Could not create image from 'Veia.png'")
		}
		veia.image = imgVeia
		veia.contentMode = .center
		veia.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		veia__root.layer.position = CGPoint(x:178.772, y:175.040)
		veia__root.alpha = 0.00
		veia__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		veia__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		veia__root.transform = CGAffineTransform(rotationAngle: 3.174)
		passo1.addSubview(veia__root)
		veia__root.addSubview(veia__xScale)
		veia__xScale.addSubview(veia__yScale)
		veia__yScale.addSubview(veia)
		passo1.addSubview(veia__root)
		viewsByName["Veia__root"] = veia__root
		viewsByName["Veia__xScale"] = veia__xScale
		viewsByName["Veia__yScale"] = veia__yScale
		viewsByName["Veia"] = veia

		let ponto__root = TutorialPasso5PassthroughView()
		let ponto__xScale = TutorialPasso5PassthroughView()
		let ponto__yScale = TutorialPasso5PassthroughView()
		let ponto = UIImageView()
		let imgPonto = UIImage(named:"Ponto.png", in: bundle, compatibleWith: nil)
		if imgPonto == nil {
			print("** Warning: Could not create image from 'Ponto.png'")
		}
		ponto.image = imgPonto
		ponto.contentMode = .center
		ponto.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		ponto__root.layer.position = CGPoint(x:220.082, y:122.780)
		ponto__root.alpha = 0.00
		ponto__xScale.transform = CGAffineTransform(scaleX: 0.91, y: 1.00)
		ponto__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.91)
		ponto__root.transform = CGAffineTransform(rotationAngle: 0.000)
		passo1.addSubview(ponto__root)
		ponto__root.addSubview(ponto__xScale)
		ponto__xScale.addSubview(ponto__yScale)
		ponto__yScale.addSubview(ponto)
		passo1.addSubview(ponto__root)
		viewsByName["Ponto__root"] = ponto__root
		viewsByName["Ponto__xScale"] = ponto__xScale
		viewsByName["Ponto__yScale"] = ponto__yScale
		viewsByName["Ponto"] = ponto

		let mãoComBorboleta2__root = TutorialPasso5PassthroughView()
		let mãoComBorboleta2__xScale = TutorialPasso5PassthroughView()
		let mãoComBorboleta2__yScale = TutorialPasso5PassthroughView()
		let mãoComBorboleta2 = UIImageView()
		let imgMãoComBorboleta2 = UIImage(named:"Mão com borboleta 2.png", in: bundle, compatibleWith: nil)
		if imgMãoComBorboleta2 == nil {
			print("** Warning: Could not create image from 'Mão com borboleta 2.png'")
		}
		mãoComBorboleta2.image = imgMãoComBorboleta2
		mãoComBorboleta2.contentMode = .center
		mãoComBorboleta2.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		mãoComBorboleta2__root.layer.position = CGPoint(x:233.000, y:202.000)
		mãoComBorboleta2__root.alpha = 0.00
		mãoComBorboleta2__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoComBorboleta2__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoComBorboleta2__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(mãoComBorboleta2__root)
		mãoComBorboleta2__root.addSubview(mãoComBorboleta2__xScale)
		mãoComBorboleta2__xScale.addSubview(mãoComBorboleta2__yScale)
		mãoComBorboleta2__yScale.addSubview(mãoComBorboleta2)
		__scaling__.addSubview(mãoComBorboleta2__root)
		viewsByName["Mão com borboleta 2__root"] = mãoComBorboleta2__root
		viewsByName["Mão com borboleta 2__xScale"] = mãoComBorboleta2__xScale
		viewsByName["Mão com borboleta 2__yScale"] = mãoComBorboleta2__yScale
		viewsByName["Mão com borboleta 2"] = mãoComBorboleta2

		let mãoComBorboleta__root = TutorialPasso5PassthroughView()
		let mãoComBorboleta__xScale = TutorialPasso5PassthroughView()
		let mãoComBorboleta__yScale = TutorialPasso5PassthroughView()
		let mãoComBorboleta = UIImageView()
		let imgMãoComBorboleta = UIImage(named:"Mão com borboleta.png", in: bundle, compatibleWith: nil)
		if imgMãoComBorboleta == nil {
			print("** Warning: Could not create image from 'Mão com borboleta.png'")
		}
		mãoComBorboleta.image = imgMãoComBorboleta
		mãoComBorboleta.contentMode = .center
		mãoComBorboleta.bounds = CGRect(x:0, y:0, width:362.0, height:404.0)
		mãoComBorboleta__root.layer.position = CGPoint(x:233.000, y:202.000)
		mãoComBorboleta__root.alpha = 0.00
		mãoComBorboleta__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoComBorboleta__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		mãoComBorboleta__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(mãoComBorboleta__root)
		mãoComBorboleta__root.addSubview(mãoComBorboleta__xScale)
		mãoComBorboleta__xScale.addSubview(mãoComBorboleta__yScale)
		mãoComBorboleta__yScale.addSubview(mãoComBorboleta)
		__scaling__.addSubview(mãoComBorboleta__root)
		viewsByName["Mão com borboleta__root"] = mãoComBorboleta__root
		viewsByName["Mão com borboleta__xScale"] = mãoComBorboleta__xScale
		viewsByName["Mão com borboleta__yScale"] = mãoComBorboleta__yScale
		viewsByName["Mão com borboleta"] = mãoComBorboleta

		self.viewsByName = viewsByName
	}

	// - MARK: passo5

	func addPasso5Animation() {
		addPasso5Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: nil)
	}

	func addPasso5Animation(completion: ((Bool) -> Void)?) {
		addPasso5Animation(beginTime: 0, fillMode: kCAFillModeBoth, removedOnCompletion: false, completion: completion)
	}

	func addPasso5Animation(removedOnCompletion: Bool) {
		addPasso5Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: nil)
	}

	func addPasso5Animation(removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		addPasso5Animation(beginTime: 0, fillMode: removedOnCompletion ? kCAFillModeRemoved : kCAFillModeBoth, removedOnCompletion: removedOnCompletion, completion: completion)
	}

	func addPasso5Animation(beginTime: CFTimeInterval, fillMode: String, removedOnCompletion: Bool, completion: ((Bool) -> Void)?) {
		let linearTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
		let easeInOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
		let easeOutTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
		let overshootTiming = CAMediaTimingFunction(controlPoints: 0.00, 0.00, 0.58, 1.30)
		let easeInTiming = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
		if let complete = completion {
			let representativeAnimation = CABasicAnimation(keyPath: "not.a.real.key")
			representativeAnimation.duration = 25.625
			representativeAnimation.delegate = self
			self.layer.add(representativeAnimation, forKey: "Passo5")
			self.animationCompletions[layer.animation(forKey: "Passo5")!] = complete
		}

		let seringaComAgulhaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		seringaComAgulhaOpacityAnimation.duration = 25.625
		seringaComAgulhaOpacityAnimation.values = [1.000, 1.000, 0.000, 0.000] as [Float]
		seringaComAgulhaOpacityAnimation.keyTimes = [0.000, 0.483, 0.537, 1.000] as [NSNumber]
		seringaComAgulhaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		seringaComAgulhaOpacityAnimation.beginTime = beginTime
		seringaComAgulhaOpacityAnimation.fillMode = fillMode
		seringaComAgulhaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seringa com agulha__root"]?.layer.add(seringaComAgulhaOpacityAnimation, forKey:"passo5_Opacity")

		let garroteP5OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		garroteP5OpacityAnimation.duration = 25.625
		garroteP5OpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		garroteP5OpacityAnimation.keyTimes = [0.000, 0.073, 0.088, 1.000] as [NSNumber]
		garroteP5OpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		garroteP5OpacityAnimation.beginTime = beginTime
		garroteP5OpacityAnimation.fillMode = fillMode
		garroteP5OpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["GarroteP5__root"]?.layer.add(garroteP5OpacityAnimation, forKey:"passo5_Opacity")

		let veiaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		veiaOpacityAnimation.duration = 25.625
		veiaOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		veiaOpacityAnimation.keyTimes = [0.000, 0.146, 0.171, 1.000] as [NSNumber]
		veiaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		veiaOpacityAnimation.beginTime = beginTime
		veiaOpacityAnimation.fillMode = fillMode
		veiaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Veia__root"]?.layer.add(veiaOpacityAnimation, forKey:"passo5_Opacity")

		let veiaScaleXAnimation = CAKeyframeAnimation(keyPath: "transform.scale.x")
		veiaScaleXAnimation.duration = 25.625
		veiaScaleXAnimation.values = [1.000, 1.000, 1.050, 0.950, 1.000, 1.000] as [Float]
		veiaScaleXAnimation.keyTimes = [0.000, 0.171, 0.200, 0.234, 0.259, 1.000] as [NSNumber]
		veiaScaleXAnimation.timingFunctions = [linearTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, linearTiming]
		veiaScaleXAnimation.beginTime = beginTime
		veiaScaleXAnimation.fillMode = fillMode
		veiaScaleXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Veia__xScale"]?.layer.add(veiaScaleXAnimation, forKey:"passo5_ScaleX")

		let veiaScaleYAnimation = CAKeyframeAnimation(keyPath: "transform.scale.y")
		veiaScaleYAnimation.duration = 25.625
		veiaScaleYAnimation.values = [1.000, 1.000, 1.050, 0.950, 1.000, 1.000] as [Float]
		veiaScaleYAnimation.keyTimes = [0.000, 0.171, 0.200, 0.234, 0.259, 1.000] as [NSNumber]
		veiaScaleYAnimation.timingFunctions = [linearTiming, easeInOutTiming, easeInOutTiming, easeInOutTiming, linearTiming]
		veiaScaleYAnimation.beginTime = beginTime
		veiaScaleYAnimation.fillMode = fillMode
		veiaScaleYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Veia__yScale"]?.layer.add(veiaScaleYAnimation, forKey:"passo5_ScaleY")

		let seringaCheiaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		seringaCheiaOpacityAnimation.duration = 25.625
		seringaCheiaOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		seringaCheiaOpacityAnimation.keyTimes = [0.000, 0.376, 0.405, 1.000] as [NSNumber]
		seringaCheiaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		seringaCheiaOpacityAnimation.beginTime = beginTime
		seringaCheiaOpacityAnimation.fillMode = fillMode
		seringaCheiaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seringa cheia__root"]?.layer.add(seringaCheiaOpacityAnimation, forKey:"passo5_Opacity")

		let seringaCheiaTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		seringaCheiaTranslationXAnimation.duration = 25.625
		seringaCheiaTranslationXAnimation.values = [0.000, 0.000, 37.359, 37.359] as [Float]
		seringaCheiaTranslationXAnimation.keyTimes = [0.000, 0.405, 0.463, 1.000] as [NSNumber]
		seringaCheiaTranslationXAnimation.timingFunctions = [linearTiming, overshootTiming, linearTiming]
		seringaCheiaTranslationXAnimation.beginTime = beginTime
		seringaCheiaTranslationXAnimation.fillMode = fillMode
		seringaCheiaTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seringa cheia__root"]?.layer.add(seringaCheiaTranslationXAnimation, forKey:"passo5_TranslationX")

		let seringaCheiaTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		seringaCheiaTranslationYAnimation.duration = 25.625
		seringaCheiaTranslationYAnimation.values = [0.000, 0.000, 25.143, 25.143] as [Float]
		seringaCheiaTranslationYAnimation.keyTimes = [0.000, 0.405, 0.463, 1.000] as [NSNumber]
		seringaCheiaTranslationYAnimation.timingFunctions = [linearTiming, overshootTiming, linearTiming]
		seringaCheiaTranslationYAnimation.beginTime = beginTime
		seringaCheiaTranslationYAnimation.fillMode = fillMode
		seringaCheiaTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Seringa cheia__root"]?.layer.add(seringaCheiaTranslationYAnimation, forKey:"passo5_TranslationY")

		let braçoComGarroteOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		braçoComGarroteOpacityAnimation.duration = 25.625
		braçoComGarroteOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		braçoComGarroteOpacityAnimation.keyTimes = [0.000, 0.580, 0.615, 1.000] as [NSNumber]
		braçoComGarroteOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		braçoComGarroteOpacityAnimation.beginTime = beginTime
		braçoComGarroteOpacityAnimation.fillMode = fillMode
		braçoComGarroteOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Braço com garrote__root"]?.layer.add(braçoComGarroteOpacityAnimation, forKey:"passo5_Opacity")

		let mãoExtraOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		mãoExtraOpacityAnimation.duration = 25.625
		mãoExtraOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		mãoExtraOpacityAnimation.keyTimes = [0.000, 0.029, 0.039, 0.107, 0.127, 1.000] as [NSNumber]
		mãoExtraOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		mãoExtraOpacityAnimation.beginTime = beginTime
		mãoExtraOpacityAnimation.fillMode = fillMode
		mãoExtraOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Mão extra__root"]?.layer.add(mãoExtraOpacityAnimation, forKey:"passo5_Opacity")

		let mãoComBorboleta2OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		mãoComBorboleta2OpacityAnimation.duration = 25.625
		mãoComBorboleta2OpacityAnimation.values = [0.000, 0.000, 1.000] as [Float]
		mãoComBorboleta2OpacityAnimation.keyTimes = [0.000, 0.956, 1.000] as [NSNumber]
		mãoComBorboleta2OpacityAnimation.timingFunctions = [linearTiming, linearTiming]
		mãoComBorboleta2OpacityAnimation.beginTime = beginTime
		mãoComBorboleta2OpacityAnimation.fillMode = fillMode
		mãoComBorboleta2OpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Mão com borboleta 2__root"]?.layer.add(mãoComBorboleta2OpacityAnimation, forKey:"passo5_Opacity")

		let pontoOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		pontoOpacityAnimation.duration = 25.625
		pontoOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		pontoOpacityAnimation.keyTimes = [0.000, 0.002, 0.015, 0.093, 0.107, 1.000] as [NSNumber]
		pontoOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		pontoOpacityAnimation.beginTime = beginTime
		pontoOpacityAnimation.fillMode = fillMode
		pontoOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Ponto__root"]?.layer.add(pontoOpacityAnimation, forKey:"passo5_Opacity")

		let agulhaECapaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		agulhaECapaOpacityAnimation.duration = 25.625
		agulhaECapaOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000] as [Float]
		agulhaECapaOpacityAnimation.keyTimes = [0.000, 0.346, 0.376, 1.000] as [NSNumber]
		agulhaECapaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		agulhaECapaOpacityAnimation.beginTime = beginTime
		agulhaECapaOpacityAnimation.fillMode = fillMode
		agulhaECapaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Agulha e capa__root"]?.layer.add(agulhaECapaOpacityAnimation, forKey:"passo5_Opacity")

		let mãoComBorboletaOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		mãoComBorboletaOpacityAnimation.duration = 25.625
		mãoComBorboletaOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000, 0.000] as [Float]
		mãoComBorboletaOpacityAnimation.keyTimes = [0.000, 0.878, 0.898, 0.956, 1.000] as [NSNumber]
		mãoComBorboletaOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming]
		mãoComBorboletaOpacityAnimation.beginTime = beginTime
		mãoComBorboletaOpacityAnimation.fillMode = fillMode
		mãoComBorboletaOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Mão com borboleta__root"]?.layer.add(mãoComBorboletaOpacityAnimation, forKey:"passo5_Opacity")

		let passo1OpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		passo1OpacityAnimation.duration = 25.625
		passo1OpacityAnimation.values = [1.000, 1.000, 0.000, 0.000] as [Float]
		passo1OpacityAnimation.keyTimes = [0.000, 0.298, 0.332, 1.000] as [NSNumber]
		passo1OpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming]
		passo1OpacityAnimation.beginTime = beginTime
		passo1OpacityAnimation.fillMode = fillMode
		passo1OpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Passo 1__root"]?.layer.add(passo1OpacityAnimation, forKey:"passo5_Opacity")

		let mãoComAlcoolOpacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
		mãoComAlcoolOpacityAnimation.duration = 25.625
		mãoComAlcoolOpacityAnimation.values = [0.000, 0.000, 1.000, 1.000, 0.000, 0.000] as [Float]
		mãoComAlcoolOpacityAnimation.keyTimes = [0.000, 0.629, 0.654, 0.834, 0.859, 1.000] as [NSNumber]
		mãoComAlcoolOpacityAnimation.timingFunctions = [linearTiming, linearTiming, linearTiming, linearTiming, linearTiming]
		mãoComAlcoolOpacityAnimation.beginTime = beginTime
		mãoComAlcoolOpacityAnimation.fillMode = fillMode
		mãoComAlcoolOpacityAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Mão com alcool__root"]?.layer.add(mãoComAlcoolOpacityAnimation, forKey:"passo5_Opacity")

		let mãoComAlcoolTranslationXAnimation = CAKeyframeAnimation(keyPath: "transform.translation.x")
		mãoComAlcoolTranslationXAnimation.duration = 25.625
		mãoComAlcoolTranslationXAnimation.values = [0.000, 0.000, -225.042, -227.384, -209.600, -228.649, -222.325, 0.000, 0.000] as [Float]
		mãoComAlcoolTranslationXAnimation.keyTimes = [0.000, 0.654, 0.698, 0.722, 0.746, 0.776, 0.800, 0.834, 1.000] as [NSNumber]
		mãoComAlcoolTranslationXAnimation.timingFunctions = [linearTiming, easeInTiming, easeInTiming, easeInTiming, easeInTiming, easeInTiming, easeOutTiming, linearTiming]
		mãoComAlcoolTranslationXAnimation.beginTime = beginTime
		mãoComAlcoolTranslationXAnimation.fillMode = fillMode
		mãoComAlcoolTranslationXAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Mão com alcool__root"]?.layer.add(mãoComAlcoolTranslationXAnimation, forKey:"passo5_TranslationX")

		let mãoComAlcoolTranslationYAnimation = CAKeyframeAnimation(keyPath: "transform.translation.y")
		mãoComAlcoolTranslationYAnimation.duration = 25.625
		mãoComAlcoolTranslationYAnimation.values = [0.000, 0.000, 0.000, 17.691, -12.498, 26.527, 4.617, 4.617] as [Float]
		mãoComAlcoolTranslationYAnimation.keyTimes = [0.000, 0.654, 0.698, 0.722, 0.746, 0.776, 0.800, 1.000] as [NSNumber]
		mãoComAlcoolTranslationYAnimation.timingFunctions = [linearTiming, linearTiming, easeInTiming, easeInTiming, easeInTiming, easeInTiming, linearTiming]
		mãoComAlcoolTranslationYAnimation.beginTime = beginTime
		mãoComAlcoolTranslationYAnimation.fillMode = fillMode
		mãoComAlcoolTranslationYAnimation.isRemovedOnCompletion = removedOnCompletion
		self.viewsByName["Mão com alcool__root"]?.layer.add(mãoComAlcoolTranslationYAnimation, forKey:"passo5_TranslationY")
	}

	func removePasso5Animation() {
		self.layer.removeAnimation(forKey: "Passo5")
		self.viewsByName["Seringa com agulha__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["GarroteP5__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Veia__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Veia__xScale"]?.layer.removeAnimation(forKey: "passo5_ScaleX")
		self.viewsByName["Veia__yScale"]?.layer.removeAnimation(forKey: "passo5_ScaleY")
		self.viewsByName["Seringa cheia__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Seringa cheia__root"]?.layer.removeAnimation(forKey: "passo5_TranslationX")
		self.viewsByName["Seringa cheia__root"]?.layer.removeAnimation(forKey: "passo5_TranslationY")
		self.viewsByName["Braço com garrote__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Mão extra__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Mão com borboleta 2__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Ponto__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Agulha e capa__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Mão com borboleta__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Passo 1__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Mão com alcool__root"]?.layer.removeAnimation(forKey: "passo5_Opacity")
		self.viewsByName["Mão com alcool__root"]?.layer.removeAnimation(forKey: "passo5_TranslationX")
		self.viewsByName["Mão com alcool__root"]?.layer.removeAnimation(forKey: "passo5_TranslationY")
	}

	// MARK: CAAnimationDelegate
	func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
		if let completion = self.animationCompletions[anim] {
			self.animationCompletions.removeValue(forKey: anim)
			completion(flag)
		}
	}

//	override func removeAllAnimations() {
//		for subview in viewsByName.values {
//			subview.layer.removeAllAnimations()
//		}
//		self.layer.removeAnimation(forKey: "Passo5")
//	}
}
