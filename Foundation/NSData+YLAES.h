//
//  NSData+YLAES.h
//  Pods
//
//  Created by 意林 on 2018/1/11.
//

#import <Foundation/Foundation.h>

@interface NSData (YLAES)
/**
 *  加密
 *
 *  @param key 公钥
 *  @param iv  偏移量
 *
 *  @return 加密之后的NSData
 */
- (NSData *)AES128EncryptWithKey:(NSString *)key iv:(NSString *)iv;
/**
 *  解密
 *
 *  @param key 公钥
 *  @param iv  偏移量
 *
 *  @return 解密之后的NSData
 */
- (NSData *)AES128DecryptWithKey:(NSString *)key iv:(NSString *)iv;
- (NSData *)aes256_encrypt:(NSString *)key iv:(NSString *)iv;
- (NSData *)aes256_decrypt:(NSString *)key iv:(NSString *)iv;
@end
