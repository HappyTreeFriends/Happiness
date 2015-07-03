//
//  FaceView.swift
//  Happiness
//
//  Created by Michael Tran on 1/07/2015.
//  Copyright (c) 2015 Michael Tran. All rights reserved.
//

import UIKit

@IBDesignable
class FaceView: UIView {
    @IBInspectable
    var lineWidth: CGFloat = 3 { didSet { setNeedsDisplay() } }
    @IBInspectable
    var color: UIColor = UIColor.blueColor() { didSet { setNeedsDisplay() } }
    @IBInspectable
    var scale: CGFloat = 0.90 { didSet { setNeedsDisplay() } }
    
    var faceCenter: CGPoint {
        return convertPoint(center, fromView: superview)
    }
    var faceRadius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2 * scale
    }
    
    override func drawRect(rect: CGRect) {
        let facePath = UIBezierPath(arcCenter: faceCenter, radius: faceRadius, startAngle: 0, endAngle: CGFloat(2*M_PI), clockwise:true)
        facePath.lineWidth = lineWidth
        color.set()
        facePath.stroke()
    }
}
