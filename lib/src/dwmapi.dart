// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _dwmapi = DynamicLibrary.open('dwmapi.dll');

/// Enables the blur effect on a specified window.
///
/// ```c
/// DWMAPI DwmEnableBlurBehindWindow(
///   HWND                 hWnd,
///   const DWM_BLURBEHIND *pBlurBehind
/// );
/// ```
/// {@category dwmapi}
int DwmEnableBlurBehindWindow(int hWnd, Pointer<DWM_BLURBEHIND> pBlurBehind) =>
    _DwmEnableBlurBehindWindow(hWnd, pBlurBehind);

late final _DwmEnableBlurBehindWindow = _dwmapi.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<DWM_BLURBEHIND> pBlurBehind),
    int Function(int hWnd,
        Pointer<DWM_BLURBEHIND> pBlurBehind)>('DwmEnableBlurBehindWindow');

/// Notifies the Desktop Window Manager (DWM) to opt in to or out of
/// Multimedia Class Schedule Service (MMCSS) scheduling while the calling
/// process is alive.
///
/// ```c
/// DWMAPI DwmEnableMMCSS(
///   BOOL fEnableMMCSS
/// );
/// ```
/// {@category dwmapi}
int DwmEnableMMCSS(int fEnableMMCSS) => _DwmEnableMMCSS(fEnableMMCSS);

late final _DwmEnableMMCSS = _dwmapi.lookupFunction<
    Int32 Function(Int32 fEnableMMCSS),
    int Function(int fEnableMMCSS)>('DwmEnableMMCSS');

/// Extends the window frame into the client area.
///
/// ```c
/// DWMAPI DwmExtendFrameIntoClientArea(
///   HWND          hWnd,
///   const MARGINS *pMarInset
/// );
/// ```
/// {@category dwmapi}
int DwmExtendFrameIntoClientArea(int hWnd, Pointer<MARGINS> pMarInset) =>
    _DwmExtendFrameIntoClientArea(hWnd, pMarInset);

late final _DwmExtendFrameIntoClientArea = _dwmapi.lookupFunction<
    Int32 Function(IntPtr hWnd, Pointer<MARGINS> pMarInset),
    int Function(
        int hWnd, Pointer<MARGINS> pMarInset)>('DwmExtendFrameIntoClientArea');

/// Issues a flush call that blocks the caller until the next present, when
/// all of the Microsoft DirectX surface updates that are currently
/// outstanding have been made. This compensates for very complex scenes or
/// calling processes with very low priority.
///
/// ```c
/// DWMAPI DwmFlush();
/// ```
/// {@category dwmapi}
int DwmFlush() => _DwmFlush();

late final _DwmFlush =
    _dwmapi.lookupFunction<Int32 Function(), int Function()>('DwmFlush');

/// Retrieves the current value of a specified Desktop Window Manager (DWM)
/// attribute applied to a window.
///
/// ```c
/// DWMAPI DwmGetWindowAttribute(
///   HWND  hwnd,
///   DWORD dwAttribute,
///   PVOID pvAttribute,
///   DWORD cbAttribute
/// );
/// ```
/// {@category dwmapi}
int DwmGetWindowAttribute(
        int hwnd, int dwAttribute, Pointer pvAttribute, int cbAttribute) =>
    _DwmGetWindowAttribute(hwnd, dwAttribute, pvAttribute, cbAttribute);

late final _DwmGetWindowAttribute = _dwmapi.lookupFunction<
    Int32 Function(IntPtr hwnd, Uint32 dwAttribute, Pointer pvAttribute,
        Uint32 cbAttribute),
    int Function(int hwnd, int dwAttribute, Pointer pvAttribute,
        int cbAttribute)>('DwmGetWindowAttribute');