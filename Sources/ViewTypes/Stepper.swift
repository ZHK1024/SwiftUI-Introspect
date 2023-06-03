#if !os(tvOS)
import SwiftUI

// MARK: SwiftUI.Stepper

public struct StepperType: IntrospectableViewType {}

extension IntrospectableViewType where Self == StepperType {
    public static var stepper: Self { .init() }
}

#if canImport(UIKit)
extension iOSViewVersion<StepperType, UIStepper> {
    public static let v13 = Self(for: .v13)
    public static let v14 = Self(for: .v14)
    public static let v15 = Self(for: .v15)
    public static let v16 = Self(for: .v16)
}
#elseif canImport(AppKit)
extension macOSViewVersion<StepperType, NSStepper> {
    public static let v10_15 = Self(for: .v10_15)
    public static let v11 = Self(for: .v11)
    public static let v12 = Self(for: .v12)
    public static let v13 = Self(for: .v13)
}
#endif
#endif