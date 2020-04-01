import Foundation

// Wrappers around StringResourceType to handle Localized String with Format

public struct LocalizedStringNoArg {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated() -> String {
    let localized = resource.translated()
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringOneArg<T: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg: T) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringTwoArgs<T: CVarArg, U: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringThreeArgs<T: CVarArg, U: CVarArg, V: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringFourArgs<T: CVarArg, U: CVarArg, V: CVarArg, W: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3, arg4)
    return LocalizedStringTransform.current.apply(localized)
  }
}

public struct LocalizedStringFiveArgs<T: CVarArg, U: CVarArg, V: CVarArg, W: CVarArg, X: CVarArg> {
  public let resource: StringResourceType

  public init(resource: StringResourceType) {
    self.resource = resource
  }

  public func translated(_ arg1: T, _ arg2: U, _ arg3: V, _ arg4: W, _ arg5: X) -> String {
    let localized = String.localizedStringWithFormat(resource.translated(), arg1, arg2, arg3, arg4, arg5)
    return LocalizedStringTransform.current.apply(localized)
  }
}
