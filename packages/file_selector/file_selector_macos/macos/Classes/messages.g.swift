// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v9.1.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation
#if os(iOS)
import Flutter
#elseif os(macOS)
import FlutterMacOS
#else
#error("Unsupported platform.")
#endif



private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)"
  ]
}

/// A Pigeon representation of the macOS portion of an `XTypeGroup`.
///
/// Generated class from Pigeon that represents data sent in messages.
struct AllowedTypes {
  var extensions: [String?]
  var mimeTypes: [String?]
  var utis: [String?]

  static func fromList(_ list: [Any]) -> AllowedTypes? {
    let extensions = list[0] as! [String?]
    let mimeTypes = list[1] as! [String?]
    let utis = list[2] as! [String?]

    return AllowedTypes(
      extensions: extensions,
      mimeTypes: mimeTypes,
      utis: utis
    )
  }
  func toList() -> [Any?] {
    return [
      extensions,
      mimeTypes,
      utis,
    ]
  }
}

/// Options for save panels.
///
/// These correspond to NSSavePanel properties (which are, by extension
/// NSOpenPanel properties as well).
///
/// Generated class from Pigeon that represents data sent in messages.
struct SavePanelOptions {
  var allowedFileTypes: AllowedTypes? = nil
  var directoryPath: String? = nil
  var nameFieldStringValue: String? = nil
  var prompt: String? = nil

  static func fromList(_ list: [Any]) -> SavePanelOptions? {
    var allowedFileTypes: AllowedTypes? = nil
    if let allowedFileTypesList = list[0] as! [Any]? {
      allowedFileTypes = AllowedTypes.fromList(allowedFileTypesList as [Any])
    }
    let directoryPath = list[1] as! String? 
    let nameFieldStringValue = list[2] as! String? 
    let prompt = list[3] as! String? 

    return SavePanelOptions(
      allowedFileTypes: allowedFileTypes,
      directoryPath: directoryPath,
      nameFieldStringValue: nameFieldStringValue,
      prompt: prompt
    )
  }
  func toList() -> [Any?] {
    return [
      allowedFileTypes?.toList(),
      directoryPath,
      nameFieldStringValue,
      prompt,
    ]
  }
}

/// Options for open panels.
///
/// These correspond to NSOpenPanel properties.
///
/// Generated class from Pigeon that represents data sent in messages.
struct OpenPanelOptions {
  var allowsMultipleSelection: Bool
  var canChooseDirectories: Bool
  var canChooseFiles: Bool
  var baseOptions: SavePanelOptions

  static func fromList(_ list: [Any]) -> OpenPanelOptions? {
    let allowsMultipleSelection = list[0] as! Bool
    let canChooseDirectories = list[1] as! Bool
    let canChooseFiles = list[2] as! Bool
    let baseOptions = SavePanelOptions.fromList(list[3] as! [Any])!

    return OpenPanelOptions(
      allowsMultipleSelection: allowsMultipleSelection,
      canChooseDirectories: canChooseDirectories,
      canChooseFiles: canChooseFiles,
      baseOptions: baseOptions
    )
  }
  func toList() -> [Any?] {
    return [
      allowsMultipleSelection,
      canChooseDirectories,
      canChooseFiles,
      baseOptions.toList(),
    ]
  }
}

private class FileSelectorApiCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
      case 128:
        return AllowedTypes.fromList(self.readValue() as! [Any])
      case 129:
        return OpenPanelOptions.fromList(self.readValue() as! [Any])
      case 130:
        return SavePanelOptions.fromList(self.readValue() as! [Any])
      default:
        return super.readValue(ofType: type)
    }
  }
}

private class FileSelectorApiCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? AllowedTypes {
      super.writeByte(128)
      super.writeValue(value.toList())
    } else if let value = value as? OpenPanelOptions {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? SavePanelOptions {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else {
      super.writeValue(value)
    }
  }
}

private class FileSelectorApiCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    return FileSelectorApiCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    return FileSelectorApiCodecWriter(data: data)
  }
}

class FileSelectorApiCodec: FlutterStandardMessageCodec {
  static let shared = FileSelectorApiCodec(readerWriter: FileSelectorApiCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol FileSelectorApi {
  /// Shows an open panel with the given [options], returning the list of
  /// selected paths.
  ///
  /// An empty list corresponds to a cancelled selection.
  func displayOpenPanel(options: OpenPanelOptions, completion: @escaping (Result<[String?], Error>) -> Void)
  /// Shows a save panel with the given [options], returning the selected path.
  ///
  /// A null return corresponds to a cancelled save.
  func displaySavePanel(options: SavePanelOptions, completion: @escaping (Result<String?, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class FileSelectorApiSetup {
  /// The codec used by FileSelectorApi.
  static var codec: FlutterStandardMessageCodec { FileSelectorApiCodec.shared }
  /// Sets up an instance of `FileSelectorApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: FileSelectorApi?) {
    /// Shows an open panel with the given [options], returning the list of
    /// selected paths.
    ///
    /// An empty list corresponds to a cancelled selection.
    let displayOpenPanelChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.FileSelectorApi.displayOpenPanel", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      displayOpenPanelChannel.setMessageHandler { message, reply in
        let args = message as! [Any]
        let optionsArg = args[0] as! OpenPanelOptions
        api.displayOpenPanel(options: optionsArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      displayOpenPanelChannel.setMessageHandler(nil)
    }
    /// Shows a save panel with the given [options], returning the selected path.
    ///
    /// A null return corresponds to a cancelled save.
    let displaySavePanelChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.FileSelectorApi.displaySavePanel", binaryMessenger: binaryMessenger, codec: codec)
    if let api = api {
      displaySavePanelChannel.setMessageHandler { message, reply in
        let args = message as! [Any]
        let optionsArg = args[0] as! SavePanelOptions
        api.displaySavePanel(options: optionsArg) { result in
          switch result {
            case .success(let res):
              reply(wrapResult(res))
            case .failure(let error):
              reply(wrapError(error))
          }
        }
      }
    } else {
      displaySavePanelChannel.setMessageHandler(nil)
    }
  }
}
