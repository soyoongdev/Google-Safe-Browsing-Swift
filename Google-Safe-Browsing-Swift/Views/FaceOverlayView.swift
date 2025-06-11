//
//  FaceOverlayView.swift
//  SampleCameraService-UIKit
//
//  Created by HAU NGUYEN on 5/6/25.
//

import UIKit

class FaceOverlayView: UIView {
    var faceRects: [CGRect] = []

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setStrokeColor(UIColor.red.cgColor)
        context.setLineWidth(2.0)
        for faceRect in faceRects {
            context.stroke(faceRect)
        }
    }

    func updateFaceRects(_ rects: [CGRect]) {
        self.faceRects = rects
        setNeedsDisplay()
    }
}
