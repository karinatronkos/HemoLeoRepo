//
// MeninoSangramentoView.swift
// Generated by Core Animator version 1.3.2 on 01/12/16.
//
// DO NOT MODIFY THIS FILE. IT IS AUTO-GENERATED AND WILL BE OVERWRITTEN
//

import UIKit

protocol MeninoSangramentoViewDelegate: class {
	func botãoDesativadoSangramentoDEPressed(botãoDesativadoSangramentoDE: UIButton)
	func botãoDesativadoSangramentoCDPressed(botãoDesativadoSangramentoCD: UIButton)
	func botãoDesativadoSangramentoPDPressed(botãoDesativadoSangramentoPD: UIButton)
	func botãoDesativadoSangramentoAEPressed(botãoDesativadoSangramentoAE: UIButton)
	func botãoDesativadoSangramentoADPressed(botãoDesativadoSangramentoAD: UIButton)
	func botãoDesativadoSangramentoDDPressed(botãoDesativadoSangramentoDD: UIButton)
	func botãoDesativadoSangramentoCEPressed(botãoDesativadoSangramentoCE: UIButton)
	func botãoDesativadoSangramentoPEPressed(botãoDesativadoSangramentoPE: UIButton)
}

private class MeninoSangramentoPassthroughView: UIView {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        for subview in subviews as [UIView] {
            if subview.point(inside: convert(point, to: subview), with: event) { return true }
        }
        return false
    }
}

@IBDesignable
class MeninoSangramentoView : UIView, CAAnimationDelegate {

	var viewsByName: [String : UIView]!

	// - MARK: Life Cycle

	convenience init() {
		self.init(frame: CGRect(x: 0, y: 0, width: 414, height: 736))
	}

	override init(frame: CGRect) {
		super.init(frame: frame)
		self.setupHierarchy()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		self.setupHierarchy()
	}

	weak var meninoSangramentoViewDelegate: MeninoSangramentoViewDelegate?

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
		__scaling__.bounds = CGRect(x:0, y:0, width:414, height:736)
		__scaling__.center = CGPoint(x:207.0, y:368.0)
		__scaling__.layer.masksToBounds = true
		self.addSubview(__scaling__)
		viewsByName["__scaling__"] = __scaling__

		let menino__root = MeninoSangramentoPassthroughView()
		let menino__xScale = MeninoSangramentoPassthroughView()
		let menino__yScale = MeninoSangramentoPassthroughView()
		let menino = UIImageView()
		let imgMenino = UIImage(named:"Menino.png", in: bundle, compatibleWith: nil)
		if imgMenino == nil {
			print("** Warning: Could not create image from 'Menino.png'")
		}
		menino.image = imgMenino
		menino.contentMode = .center
		menino.bounds = CGRect(x:0, y:0, width:294.0, height:992.0)
		menino__root.layer.position = CGPoint(x:207.000, y:368.000)
		menino__xScale.transform = CGAffineTransform(scaleX: 0.68, y: 1.00)
		menino__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 0.68)
		menino__root.transform = CGAffineTransform(rotationAngle: 0.000)
		__scaling__.addSubview(menino__root)
		menino__root.addSubview(menino__xScale)
		menino__xScale.addSubview(menino__yScale)
		menino__yScale.addSubview(menino)
		__scaling__.addSubview(menino__root)
		viewsByName["Menino__root"] = menino__root
		viewsByName["Menino__xScale"] = menino__xScale
		viewsByName["Menino__yScale"] = menino__yScale
		viewsByName["Menino"] = menino

		let botãoDesativadoSangramentoDE__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoDE__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoDE__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoDE = UIButton(type: .custom)
		let imgBotãoDesativadoSangramento = UIImage(named:"BotãoDesativadoSangramento.png", in: bundle, compatibleWith: nil)
		if imgBotãoDesativadoSangramento == nil {
			print("** Warning: Could not create image from 'BotãoDesativadoSangramento.png'")
		}
		botãoDesativadoSangramentoDE.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoDE.contentMode = .center
		botãoDesativadoSangramentoDE.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoDE__root.layer.position = CGPoint(x:161.727, y:175.727)
		botãoDesativadoSangramentoDE__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoDE__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoDE__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoDE.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoDEPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoDE__root)
		botãoDesativadoSangramentoDE__root.addSubview(botãoDesativadoSangramentoDE__xScale)
		botãoDesativadoSangramentoDE__xScale.addSubview(botãoDesativadoSangramentoDE__yScale)
		botãoDesativadoSangramentoDE__yScale.addSubview(botãoDesativadoSangramentoDE)
		__scaling__.addSubview(botãoDesativadoSangramentoDE__root)
		viewsByName["BotãoDesativadoSangramentoDE__root"] = botãoDesativadoSangramentoDE__root
		viewsByName["BotãoDesativadoSangramentoDE__xScale"] = botãoDesativadoSangramentoDE__xScale
		viewsByName["BotãoDesativadoSangramentoDE__yScale"] = botãoDesativadoSangramentoDE__yScale
		viewsByName["BotãoDesativadoSangramentoDE"] = botãoDesativadoSangramentoDE

		let botãoDesativadoSangramentoAE__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoAE__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoAE__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoAE = UIButton(type: .custom)
		botãoDesativadoSangramentoAE.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoAE.contentMode = .center
		botãoDesativadoSangramentoAE.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoAE__root.layer.position = CGPoint(x:127.964, y:346.000)
		botãoDesativadoSangramentoAE__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoAE__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoAE__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoAE.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoAEPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoAE__root)
		botãoDesativadoSangramentoAE__root.addSubview(botãoDesativadoSangramentoAE__xScale)
		botãoDesativadoSangramentoAE__xScale.addSubview(botãoDesativadoSangramentoAE__yScale)
		botãoDesativadoSangramentoAE__yScale.addSubview(botãoDesativadoSangramentoAE)
		__scaling__.addSubview(botãoDesativadoSangramentoAE__root)
		viewsByName["BotãoDesativadoSangramentoAE__root"] = botãoDesativadoSangramentoAE__root
		viewsByName["BotãoDesativadoSangramentoAE__xScale"] = botãoDesativadoSangramentoAE__xScale
		viewsByName["BotãoDesativadoSangramentoAE__yScale"] = botãoDesativadoSangramentoAE__yScale
		viewsByName["BotãoDesativadoSangramentoAE"] = botãoDesativadoSangramentoAE

		let botãoDesativadoSangramentoCE__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoCE__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoCE__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoCE = UIButton(type: .custom)
		botãoDesativadoSangramentoCE.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoCE.contentMode = .center
		botãoDesativadoSangramentoCE.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoCE__root.layer.position = CGPoint(x:172.901, y:478.456)
		botãoDesativadoSangramentoCE__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoCE__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoCE__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoCE.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoCEPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoCE__root)
		botãoDesativadoSangramentoCE__root.addSubview(botãoDesativadoSangramentoCE__xScale)
		botãoDesativadoSangramentoCE__xScale.addSubview(botãoDesativadoSangramentoCE__yScale)
		botãoDesativadoSangramentoCE__yScale.addSubview(botãoDesativadoSangramentoCE)
		__scaling__.addSubview(botãoDesativadoSangramentoCE__root)
		viewsByName["BotãoDesativadoSangramentoCE__root"] = botãoDesativadoSangramentoCE__root
		viewsByName["BotãoDesativadoSangramentoCE__xScale"] = botãoDesativadoSangramentoCE__xScale
		viewsByName["BotãoDesativadoSangramentoCE__yScale"] = botãoDesativadoSangramentoCE__yScale
		viewsByName["BotãoDesativadoSangramentoCE"] = botãoDesativadoSangramentoCE

		let botãoDesativadoSangramentoCD__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoCD__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoCD__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoCD = UIButton(type: .custom)
		botãoDesativadoSangramentoCD.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoCD.contentMode = .center
		botãoDesativadoSangramentoCD.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoCD__root.layer.position = CGPoint(x:240.193, y:478.456)
		botãoDesativadoSangramentoCD__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoCD__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoCD__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoCD.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoCDPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoCD__root)
		botãoDesativadoSangramentoCD__root.addSubview(botãoDesativadoSangramentoCD__xScale)
		botãoDesativadoSangramentoCD__xScale.addSubview(botãoDesativadoSangramentoCD__yScale)
		botãoDesativadoSangramentoCD__yScale.addSubview(botãoDesativadoSangramentoCD)
		__scaling__.addSubview(botãoDesativadoSangramentoCD__root)
		viewsByName["BotãoDesativadoSangramentoCD__root"] = botãoDesativadoSangramentoCD__root
		viewsByName["BotãoDesativadoSangramentoCD__xScale"] = botãoDesativadoSangramentoCD__xScale
		viewsByName["BotãoDesativadoSangramentoCD__yScale"] = botãoDesativadoSangramentoCD__yScale
		viewsByName["BotãoDesativadoSangramentoCD"] = botãoDesativadoSangramentoCD

		let botãoDesativadoSangramentoPD__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoPD__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoPD__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoPD = UIButton(type: .custom)
		botãoDesativadoSangramentoPD.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoPD.contentMode = .center
		botãoDesativadoSangramentoPD.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoPD__root.layer.position = CGPoint(x:265.000, y:585.708)
		botãoDesativadoSangramentoPD__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoPD__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoPD__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoPD.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoPDPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoPD__root)
		botãoDesativadoSangramentoPD__root.addSubview(botãoDesativadoSangramentoPD__xScale)
		botãoDesativadoSangramentoPD__xScale.addSubview(botãoDesativadoSangramentoPD__yScale)
		botãoDesativadoSangramentoPD__yScale.addSubview(botãoDesativadoSangramentoPD)
		__scaling__.addSubview(botãoDesativadoSangramentoPD__root)
		viewsByName["BotãoDesativadoSangramentoPD__root"] = botãoDesativadoSangramentoPD__root
		viewsByName["BotãoDesativadoSangramentoPD__xScale"] = botãoDesativadoSangramentoPD__xScale
		viewsByName["BotãoDesativadoSangramentoPD__yScale"] = botãoDesativadoSangramentoPD__yScale
		viewsByName["BotãoDesativadoSangramentoPD"] = botãoDesativadoSangramentoPD

		let botãoDesativadoSangramentoPE__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoPE__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoPE__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoPE = UIButton(type: .custom)
		botãoDesativadoSangramentoPE.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoPE.contentMode = .center
		botãoDesativadoSangramentoPE.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoPE__root.layer.position = CGPoint(x:147.880, y:585.497)
		botãoDesativadoSangramentoPE__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoPE__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoPE__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoPE.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoPEPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoPE__root)
		botãoDesativadoSangramentoPE__root.addSubview(botãoDesativadoSangramentoPE__xScale)
		botãoDesativadoSangramentoPE__xScale.addSubview(botãoDesativadoSangramentoPE__yScale)
		botãoDesativadoSangramentoPE__yScale.addSubview(botãoDesativadoSangramentoPE)
		__scaling__.addSubview(botãoDesativadoSangramentoPE__root)
		viewsByName["BotãoDesativadoSangramentoPE__root"] = botãoDesativadoSangramentoPE__root
		viewsByName["BotãoDesativadoSangramentoPE__xScale"] = botãoDesativadoSangramentoPE__xScale
		viewsByName["BotãoDesativadoSangramentoPE__yScale"] = botãoDesativadoSangramentoPE__yScale
		viewsByName["BotãoDesativadoSangramentoPE"] = botãoDesativadoSangramentoPE

		let botãoDesativadoSangramentoAD__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoAD__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoAD__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoAD = UIButton(type: .custom)
		botãoDesativadoSangramentoAD.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoAD.contentMode = .center
		botãoDesativadoSangramentoAD.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoAD__root.layer.position = CGPoint(x:284.721, y:346.000)
		botãoDesativadoSangramentoAD__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoAD__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoAD__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoAD.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoADPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoAD__root)
		botãoDesativadoSangramentoAD__root.addSubview(botãoDesativadoSangramentoAD__xScale)
		botãoDesativadoSangramentoAD__xScale.addSubview(botãoDesativadoSangramentoAD__yScale)
		botãoDesativadoSangramentoAD__yScale.addSubview(botãoDesativadoSangramentoAD)
		__scaling__.addSubview(botãoDesativadoSangramentoAD__root)
		viewsByName["BotãoDesativadoSangramentoAD__root"] = botãoDesativadoSangramentoAD__root
		viewsByName["BotãoDesativadoSangramentoAD__xScale"] = botãoDesativadoSangramentoAD__xScale
		viewsByName["BotãoDesativadoSangramentoAD__yScale"] = botãoDesativadoSangramentoAD__yScale
		viewsByName["BotãoDesativadoSangramentoAD"] = botãoDesativadoSangramentoAD

		let botãoDesativadoSangramentoDD__root = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoDD__xScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoDD__yScale = MeninoSangramentoPassthroughView()
		let botãoDesativadoSangramentoDD = UIButton(type: .custom)
		botãoDesativadoSangramentoDD.setBackgroundImage(imgBotãoDesativadoSangramento, for:.normal)
		botãoDesativadoSangramentoDD.contentMode = .center
		botãoDesativadoSangramentoDD.bounds = CGRect(x:0, y:0, width:44.0, height:44.0)
		botãoDesativadoSangramentoDD__root.layer.position = CGPoint(x:256.859, y:176.935)
		botãoDesativadoSangramentoDD__xScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoDD__yScale.transform = CGAffineTransform(scaleX: 1.00, y: 1.00)
		botãoDesativadoSangramentoDD__root.transform = CGAffineTransform(rotationAngle: 0.000)
		botãoDesativadoSangramentoDD.addTarget(self, action:#selector(MeninoSangramentoView.actionBotãoDesativadoSangramentoDDPressed), for: .touchUpInside)
		__scaling__.addSubview(botãoDesativadoSangramentoDD__root)
		botãoDesativadoSangramentoDD__root.addSubview(botãoDesativadoSangramentoDD__xScale)
		botãoDesativadoSangramentoDD__xScale.addSubview(botãoDesativadoSangramentoDD__yScale)
		botãoDesativadoSangramentoDD__yScale.addSubview(botãoDesativadoSangramentoDD)
		__scaling__.addSubview(botãoDesativadoSangramentoDD__root)
		viewsByName["BotãoDesativadoSangramentoDD__root"] = botãoDesativadoSangramentoDD__root
		viewsByName["BotãoDesativadoSangramentoDD__xScale"] = botãoDesativadoSangramentoDD__xScale
		viewsByName["BotãoDesativadoSangramentoDD__yScale"] = botãoDesativadoSangramentoDD__yScale
		viewsByName["BotãoDesativadoSangramentoDD"] = botãoDesativadoSangramentoDD

		self.viewsByName = viewsByName
	}

	func actionBotãoDesativadoSangramentoDEPressed(botãoDesativadoSangramentoDE: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoDEPressed(botãoDesativadoSangramentoDE: botãoDesativadoSangramentoDE)
	}

	func actionBotãoDesativadoSangramentoAEPressed(botãoDesativadoSangramentoAE: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoAEPressed(botãoDesativadoSangramentoAE: botãoDesativadoSangramentoAE)
	}

	func actionBotãoDesativadoSangramentoCEPressed(botãoDesativadoSangramentoCE: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoCEPressed(botãoDesativadoSangramentoCE: botãoDesativadoSangramentoCE)
	}

	func actionBotãoDesativadoSangramentoCDPressed(botãoDesativadoSangramentoCD: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoCDPressed(botãoDesativadoSangramentoCD: botãoDesativadoSangramentoCD)
	}

	func actionBotãoDesativadoSangramentoPDPressed(botãoDesativadoSangramentoPD: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoPDPressed(botãoDesativadoSangramentoPD: botãoDesativadoSangramentoPD)
	}

	func actionBotãoDesativadoSangramentoPEPressed(botãoDesativadoSangramentoPE: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoPEPressed(botãoDesativadoSangramentoPE: botãoDesativadoSangramentoPE)
	}

	func actionBotãoDesativadoSangramentoADPressed(botãoDesativadoSangramentoAD: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoADPressed(botãoDesativadoSangramentoAD: botãoDesativadoSangramentoAD)
	}

	func actionBotãoDesativadoSangramentoDDPressed(botãoDesativadoSangramentoDD: UIButton) {
		meninoSangramentoViewDelegate?.botãoDesativadoSangramentoDDPressed(botãoDesativadoSangramentoDD: botãoDesativadoSangramentoDD)
	}
}