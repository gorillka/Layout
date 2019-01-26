//
//  CGSize+UniformKeyPathInitializable.swift
//  Layout
//
//  Created by Artem Orynko on 1/26/19.
//  Copyright © 2019 gorilka-team. All rights reserved.
//

extension CGSize: UniformKeyPathInitializable {
    public typealias Value = CGFloat
}

extension CGSize {
    public var all: CGFloat {
        get { return -1 }
        set { (width, height) = (newValue, newValue) }
    }
}
