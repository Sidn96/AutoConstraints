//
//  UIView+constraints.swift
//  AutoConstraints
//
//  Created by LAPSHOP.IN on 05/02/20.
//  Copyright © 2020 BOPPO TECHNOLOGIES. All rights reserved.
//

import UIKit

extension UIView {
    
    /// Returns a collection of constraints to anchor the bounds of the current view to the given view.
    ///
    /// - Parameter view: The view to anchor to.
    /// - Returns: The layout constraints needed for this constraint.
    func constraintsForAllEdges(boundsOf view: UIView, marginTop valueTop: CGFloat, marginLeading valueLeading: CGFloat, marginBottom valueBottom: CGFloat, marginTrailing valueTrailing: CGFloat) -> [NSLayoutConstraint] {
        return [
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: valueTop),
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: valueLeading),
            //            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            //            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, constant: valueBottom),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: trailingAnchor, constant: valueTrailing)
        ]
    }
    
    
    /// Returns a collection of constraints to anchor the bounds of the current view to the given view.
    /// - Parameters:
    ///   - view: The view to anchor to.
    ///   - valueTop: top value to the parentView
    ///   - valueLeading: leading value to the parentView
    ///   - valueTrailing: trailing value to the parentView
    ///   - heightValue: height value to the parentView
    /// - Returns: The layout constraints needed for this constraint.
    func constraintsWithHeight(boundsOf view: UIView, marginTop valueTop: CGFloat, marginLeading valueLeading: CGFloat,  marginTrailing valueTrailing: CGFloat, height heightValue: CGFloat) -> [NSLayoutConstraint] {
        return [
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: valueTop),
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: valueLeading),
            //            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            //            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            //            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, constant: valueBottom),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: trailingAnchor, constant: valueTrailing),
            view.heightAnchor.constraint(equalToConstant: heightValue)
        ]
    }
    
    
    /// Returns a collection of constraints to anchor the bounds of the current view to the given view.
    /// - Parameters:
    ///   - view: The view to anchor to.
    ///   - valueTop: top value to the parentView
    ///   - valueLeading: leading value to the parentView
    ///   - valueTrailing: trailing value to the parentView
    ///   - heightValue: height value to the parentView
    ///   - widthValue: width value to the parentView
    /// - Returns: The layout constraints needed for this constraint.
    func constraintsWithWidthAndHeight(boundsOf view: UIView, marginTop valueTop: CGFloat, marginLeading valueLeading: CGFloat,  marginTrailing valueTrailing: CGFloat, height heightValue: CGFloat, width widthValue: CGFloat) -> [NSLayoutConstraint] {
        return [
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: valueTop),
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: valueLeading),
            //            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            //            trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            //            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor, constant: valueBottom),
//            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: trailingAnchor, constant: valueTrailing),
            view.widthAnchor.constraint(equalToConstant: widthValue),
            view.heightAnchor.constraint(equalToConstant: heightValue)
        ]
    }
    
    
    
    /// Returns a collection of constraints to anchor the bounds of the current view to the given view.
    /// - Parameter view: The view to anchor to.
    func constraintsToCenterInParent(boundsOf view: UIView) -> [NSLayoutConstraint] {
            return [
                centerXAnchor.constraint(equalTo: view.centerXAnchor),
                centerYAnchor.constraint(equalTo: view.centerYAnchor),
            ]
        }
    
}
