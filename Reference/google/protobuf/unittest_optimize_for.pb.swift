/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_optimize_for.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//  Author: kenton@google.com (Kenton Varda)
//   Based on original Protocol Buffers design by
//   Sanjay Ghemawat, Jeff Dean, and others.
// 
//  A proto file which uses optimize_for = CODE_SIZE.

import Foundation
import SwiftProtobuf


struct ProtobufUnittest_TestOptimizedForSize: ProtobufGeneratedMessage, ProtobufProto2Message, ProtobufExtensibleMessage, ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_TestOptimizedForSize"}
  public var protoMessageName: String {return "TestOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "i", swift: "i"),
    19: .same(proto: "msg", swift: "msg"),
    2: .unique(proto: "integer_field", json: "integerField", swift: "integerField"),
    3: .unique(proto: "string_field", json: "stringField", swift: "stringField"),
  ]

  private class _StorageClass: ProtobufExtensibleMessageStorage {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestOptimizedForSize
    var extensionFieldValues = ProtobufExtensionFieldValueSet()
    var unknown = ProtobufUnknownStorage()
    var _i: Int32? = nil
    var _msg: ProtobufUnittest_ForeignMessage? = nil
    var _foo = ProtobufUnittest_TestOptimizedForSize.OneOf_Foo()

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &_i)
      case 19: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_ForeignMessage.self, value: &_msg)
      case 2, 3: try _foo.decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
      default: if (1000 <= protoFieldNumber && protoFieldNumber < 536870912) {
          try setter.decodeExtensionField(values: &extensionFieldValues, messageType: ProtobufUnittest_TestOptimizedForSize.self, protoFieldNumber: protoFieldNumber)
        }
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _i {
        try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1)
      }
      try _foo.traverse(visitor: &visitor, start: 2, end: 4)
      if let v = _msg {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 19)
      }
      try extensionFieldValues.traverse(visitor: &visitor, start: 1000, end: 536870912)
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if (_i != other._i) {return false}
      if ((_msg != nil || other._msg != nil) && (_msg == nil || other._msg == nil || _msg! != other._msg!)) {return false}
      if _foo != other._foo {return false}
      if unknown != other.unknown {return false}
      if extensionFieldValues != other.extensionFieldValues {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone.extensionFieldValues = extensionFieldValues
      clone._i = _i
      clone._msg = _msg
      clone._foo = _foo
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: ProtobufUnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  enum OneOf_Foo: ExpressibleByNilLiteral, ProtobufOneofEnum {
    case integerField(Int32)
    case stringField(String)
    case None

    public init(nilLiteral: ()) {
      self = .None
    }

    public init() {
      self = .None
    }

    public mutating func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
      if self != .None && setter.rejectConflictingOneof {
        throw ProtobufDecodingError.duplicatedOneOf
      }
      switch protoFieldNumber {
      case 2:
        var value: Int32?
        try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &value)
        if let value = value {
          self = .integerField(value)
        }
      case 3:
        var value: String?
        try setter.decodeSingularField(fieldType: ProtobufString.self, value: &value)
        if let value = value {
          self = .stringField(value)
        }
      default:
        self = .None
      }
    }

    public func traverse(visitor: inout ProtobufVisitor, start: Int, end: Int) throws {
      switch self {
      case .integerField(let v):
        if start <= 2 && 2 < end {
          try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 2)
        }
      case .stringField(let v):
        if start <= 3 && 3 < end {
          try visitor.visitSingularField(fieldType: ProtobufString.self, value: v, protoFieldNumber: 3)
        }
      case .None:
        break
      }
    }
  }

  struct Extensions {

    static let testExtension = ProtobufGenericMessageExtension<ProtobufOptionalField<ProtobufInt32>, ProtobufUnittest_TestOptimizedForSize>(protoFieldNumber: 1234, fieldNames: .unique(proto: "test_extension", json: "testExtension", swift: "ProtobufUnittest_TestOptimizedForSize_testExtension"), defaultValue: 0)

    static let testExtension2 = ProtobufGenericMessageExtension<ProtobufOptionalMessageField<ProtobufUnittest_TestRequiredOptimizedForSize>, ProtobufUnittest_TestOptimizedForSize>(protoFieldNumber: 1235, fieldNames: .unique(proto: "test_extension2", json: "testExtension2", swift: "ProtobufUnittest_TestOptimizedForSize_testExtension2"), defaultValue: ProtobufUnittest_TestRequiredOptimizedForSize())
  }

  var i: Int32 {
    get {return _storage._i ?? 0}
    set {_uniqueStorage()._i = newValue}
  }
  public var hasI: Bool {
    return _storage._i != nil
  }
  public mutating func clearI() {
    return _storage._i = nil
  }

  var msg: ProtobufUnittest_ForeignMessage {
    get {return _storage._msg ?? ProtobufUnittest_ForeignMessage()}
    set {_uniqueStorage()._msg = newValue}
  }
  public var hasMsg: Bool {
    return _storage._msg != nil
  }
  public mutating func clearMsg() {
    return _storage._msg = nil
  }

  var integerField: Int32 {
    get {
      if case .integerField(let v) = _storage._foo {
        return v
      }
      return 0
    }
    set {
      _uniqueStorage()._foo = .integerField(newValue)
    }
  }

  var stringField: String {
    get {
      if case .stringField(let v) = _storage._foo {
        return v
      }
      return ""
    }
    set {
      _uniqueStorage()._foo = .stringField(newValue)
    }
  }

  public var foo: OneOf_Foo {
    get {return _storage._foo}
    set {
      _uniqueStorage()._foo = newValue
    }
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestOptimizedForSize) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }

  public mutating func setExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufUnittest_TestOptimizedForSize>, value: F.ValueType) {
    return _uniqueStorage().setExtensionValue(ext: ext, value: value)
  }

  public mutating func clearExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) {
    return _storage.clearExtensionValue(ext: ext)
  }

  public func getExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) -> F.ValueType {
    return _storage.getExtensionValue(ext: ext)
  }

  public func hasExtensionValue<F: ProtobufExtensionField>(ext: ProtobufGenericMessageExtension<F, ProtobufUnittest_TestOptimizedForSize>) -> Bool {
    return _storage.hasExtensionValue(ext: ext)
  }
  public func _protobuf_fieldNames(for number: Int) -> FieldNameMap.Names? {
    return ProtobufUnittest_TestOptimizedForSize._protobuf_fieldNames.fieldNames(for: number) ?? _storage.extensionFieldValues.fieldNames(for: number)
  }
}

struct ProtobufUnittest_TestRequiredOptimizedForSize: ProtobufGeneratedMessage, ProtobufProto2Message, ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_TestRequiredOptimizedForSize"}
  public var protoMessageName: String {return "TestRequiredOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "x", swift: "x"),
  ]

  public var unknown = ProtobufUnknownStorage()

  private var _x: Int32? = nil
  var x: Int32 {
    get {return _x ?? 0}
    set {_x = newValue}
  }
  public var hasX: Bool {
    return _x != nil
  }
  public mutating func clearX() {
    return _x = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &_x)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: _x ?? 0, protoFieldNumber: 1)
    unknown.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestRequiredOptimizedForSize) -> Bool {
    if (x != other.x) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}

struct ProtobufUnittest_TestOptionalOptimizedForSize: ProtobufGeneratedMessage, ProtobufProto2Message, ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittest_TestOptionalOptimizedForSize"}
  public var protoMessageName: String {return "TestOptionalOptimizedForSize"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "o", swift: "o"),
  ]

  private class _StorageClass {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestOptionalOptimizedForSize
    var unknown = ProtobufUnknownStorage()
    var _o: ProtobufUnittest_TestRequiredOptimizedForSize? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
      switch protoFieldNumber {
      case 1: try setter.decodeSingularMessageField(fieldType: ProtobufUnittest_TestRequiredOptimizedForSize.self, value: &_o)
      default: break
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _o {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1)
      }
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if ((_o != nil || other._o != nil) && (_o == nil || other._o == nil || _o! != other._o!)) {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._o = _o
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var unknown: ProtobufUnknownStorage {
    get {return _storage.unknown}
    set {_storage.unknown = newValue}
  }

  var o: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return _storage._o ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {_uniqueStorage()._o = newValue}
  }
  public var hasO: Bool {
    return _storage._o != nil
  }
  public mutating func clearO() {
    return _storage._o = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
    try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestOptionalOptimizedForSize) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

func ==(lhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo, rhs: ProtobufUnittest_TestOptimizedForSize.OneOf_Foo) -> Bool {
  switch (lhs, rhs) {
  case (.integerField(let l), .integerField(let r)): return l == r
  case (.stringField(let l), .stringField(let r)): return l == r
  case (.None, .None): return true
  default: return false
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension: Int32 {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension) ?? 0}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension, value: newValue)}
  }
  var hasProtobufUnittest_TestOptimizedForSize_testExtension: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension)
  }
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension)
  }
}

extension ProtobufUnittest_TestOptimizedForSize {
  var ProtobufUnittest_TestOptimizedForSize_testExtension2: ProtobufUnittest_TestRequiredOptimizedForSize {
    get {return getExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension2) ?? ProtobufUnittest_TestRequiredOptimizedForSize()}
    set {setExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension2, value: newValue)}
  }
  var hasProtobufUnittest_TestOptimizedForSize_testExtension2: Bool {
    return hasExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension2)
  }
  mutating func clearProtobufUnittest_TestOptimizedForSize_testExtension2() {
    clearExtensionValue(ext: ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension2)
  }
}

let ProtobufUnittest_UnittestOptimizeFor_Extensions: ProtobufExtensionSet = [
  ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension,
  ProtobufUnittest_TestOptimizedForSize.Extensions.testExtension2
]
