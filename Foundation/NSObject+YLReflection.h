//
//  NSObject+YLReflection.h
//  NSObject-YLReflection
//
//  Created by Jakey on 15/12/22.
//  Copyright © 2015年 Jakey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (YLReflection)
//类名
- (NSString *)yl_className;
+ (NSString *)yl_className;
//父类名称
- (NSString *)yl_superClassName;
+ (NSString *)yl_superClassName;

//实例属性字典
-(NSDictionary *)yl_propertyDictionary;

//属性名称列表
- (NSArray*)yl_propertyKeys;
+ (NSArray *)yl_propertyKeys;

//属性详细信息列表
- (NSArray *)yl_propertiesInfo;
+ (NSArray *)yl_propertiesInfo;

//格式化后的属性列表
+ (NSArray *)yl_propertiesWithCodeFormat;

//方法列表
-(NSArray*)yl_methodList;
+(NSArray*)yl_methodList;

-(NSArray*)yl_methodListInfo;

//创建并返回一个指向所有已注册类的指针列表
+ (NSArray *)yl_registedClassList;
//实例变量
+ (NSArray *)yl_instanceVariable;

//协议列表
-(NSDictionary *)yl_protocolList;
+ (NSDictionary *)yl_protocolList;


- (BOOL)yl_hasPropertyForKey:(NSString*)key;
- (BOOL)yl_hasIvarForKey:(NSString*)key;

@end
