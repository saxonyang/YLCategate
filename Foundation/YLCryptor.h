//
//  YLCryptor.h
//  YLKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2014 - 2017 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

@import Foundation;

/**
 *  This class adds some useful methods to encrypt/decrypt data.
 *  All methods are static
 */
@interface YLCryptor : NSObject

/**
 *  Create a MD5 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the MD5 NSString
 */
+ (NSString * _Nullable)MD5:(NSString * _Nonnull)string;

/**
 *  Create a SHA1 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the SHA1 NSString
 */
+ (NSString * _Nullable)SHA1:(NSString * _Nonnull)string;

/**
 *  Create a SHA256 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the SHA256 NSString
 */
+ (NSString * _Nullable)SHA256:(NSString * _Nonnull)string;

/**
 *  Create a SHA512 string
 *
 *  @param string The string to be converted
 *
 *  @return Returns the SHA512 NSString
 */
+ (NSString * _Nullable)SHA512:(NSString * _Nonnull)string;



@end
