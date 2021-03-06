/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_import.proto
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
//  A proto file which is imported by unittest.proto to test importing.

import Foundation
import SwiftProtobuf


enum ProtobufUnittestImport_ImportEnum: ProtobufEnum {
  typealias RawValue = Int
  case importFoo // = 7
  case importBar // = 8
  case importBaz // = 9

  init() {
    self = .importFoo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 7: self = .importFoo
    case 8: self = .importBar
    case 9: self = .importBaz
    default: return nil
    }
  }

  init?(name: String) {
    switch name {
    case "importFoo": self = .importFoo
    case "importBar": self = .importBar
    case "importBaz": self = .importBaz
    default: return nil
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "IMPORT_FOO": self = .importFoo
    case "IMPORT_BAR": self = .importBar
    case "IMPORT_BAZ": self = .importBaz
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "IMPORT_FOO": self = .importFoo
    case "IMPORT_BAR": self = .importBar
    case "IMPORT_BAZ": self = .importBaz
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .importFoo: return 7
      case .importBar: return 8
      case .importBaz: return 9
      }
    }
  }

  var json: String {
    get {
      switch self {
      case .importFoo: return "\"IMPORT_FOO\""
      case .importBar: return "\"IMPORT_BAR\""
      case .importBaz: return "\"IMPORT_BAZ\""
      }
    }
  }

  var hashValue: Int { return rawValue }

  var debugDescription: String {
    get {
      switch self {
      case .importFoo: return ".importFoo"
      case .importBar: return ".importBar"
      case .importBaz: return ".importBaz"
      }
    }
  }

}

///   To use an enum in a map, it must has the first value as 0.
enum ProtobufUnittestImport_ImportEnumForMap: ProtobufEnum {
  typealias RawValue = Int
  case unknown // = 0
  case foo // = 1
  case bar // = 2

  init() {
    self = .unknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unknown
    case 1: self = .foo
    case 2: self = .bar
    default: return nil
    }
  }

  init?(name: String) {
    switch name {
    case "unknown": self = .unknown
    case "foo": self = .foo
    case "bar": self = .bar
    default: return nil
    }
  }

  init?(jsonName: String) {
    switch jsonName {
    case "UNKNOWN": self = .unknown
    case "FOO": self = .foo
    case "BAR": self = .bar
    default: return nil
    }
  }

  init?(protoName: String) {
    switch protoName {
    case "UNKNOWN": self = .unknown
    case "FOO": self = .foo
    case "BAR": self = .bar
    default: return nil
    }
  }

  var rawValue: Int {
    get {
      switch self {
      case .unknown: return 0
      case .foo: return 1
      case .bar: return 2
      }
    }
  }

  var json: String {
    get {
      switch self {
      case .unknown: return "\"UNKNOWN\""
      case .foo: return "\"FOO\""
      case .bar: return "\"BAR\""
      }
    }
  }

  var hashValue: Int { return rawValue }

  var debugDescription: String {
    get {
      switch self {
      case .unknown: return ".unknown"
      case .foo: return ".foo"
      case .bar: return ".bar"
      }
    }
  }

}

struct ProtobufUnittestImport_ImportMessage: ProtobufGeneratedMessage, ProtobufProto2Message, ProtoNameProviding {
  public var swiftClassName: String {return "ProtobufUnittestImport_ImportMessage"}
  public var protoMessageName: String {return "ImportMessage"}
  public var protoPackageName: String {return "protobuf_unittest_import"}
  public static let _protobuf_fieldNames: FieldNameMap = [
    1: .same(proto: "d", swift: "d"),
  ]

  public var unknown = ProtobufUnknownStorage()

  private var _d: Int32? = nil
  var d: Int32 {
    get {return _d ?? 0}
    set {_d = newValue}
  }
  public var hasD: Bool {
    return _d != nil
  }
  public mutating func clearD() {
    return _d = nil
  }

  init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws {
    switch protoFieldNumber {
    case 1: try setter.decodeSingularField(fieldType: ProtobufInt32.self, value: &_d)
    default: break
    }
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if let v = _d {
      try visitor.visitSingularField(fieldType: ProtobufInt32.self, value: v, protoFieldNumber: 1)
    }
    unknown.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittestImport_ImportMessage) -> Bool {
    if (d != other.d) {return false}
    if unknown != other.unknown {return false}
    return true
  }
}
