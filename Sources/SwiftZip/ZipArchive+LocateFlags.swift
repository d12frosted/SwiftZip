// SwiftZip -- Swift wrapper for libzip
//
// Copyright (c) 2019-2020 Victor Pavlychko
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import zip

extension ZipArchive {
    /// A set of flags to be used with `ZipArchive` name-based APIs: `locate`, `stat` and `open`.
    public struct LocateFlags: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }
    }
}

extension ZipArchive.LocateFlags {
    /// Ignore case distinctions. (Will only work well if the file names are ASCII.)
    /// With this flag, operation will be slow for archives with many files.
    public static let caseInsensitive = ZipArchive.LocateFlags(rawValue: ZIP_FL_NOCASE)

    /// Ignore directory part of file name in archive.
    /// With this flag, operation will be slow for archives with many files.
    public static let ignoreDirectory = ZipArchive.LocateFlags(rawValue: ZIP_FL_NODIR)
}
