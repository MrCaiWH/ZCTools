//
//  ZCDeviceInfo.m
//  ZCTools
//
//  Created by caiwanhong on 2024/2/24.
//

#import "ZCDeviceInfo.h"

@implementation ZCDeviceInfo

- (NSString *)systemVersion {
    if (!_systemVersion) {
        _systemVersion = [UIDevice currentDevice].systemVersion;
    }
    return _systemVersion;
}

- (NSString *)systemLanguage {
    if (_systemLanguage == nil) {
        NSLocale *locale = [NSLocale currentLocale];
        if ([[NSLocale preferredLanguages] count] > 0) {
            _systemLanguage = [[NSLocale preferredLanguages] objectAtIndex:0];
        } else {
            _systemLanguage = [locale objectForKey:NSLocaleLanguageCode];
        }
    }
    return _systemLanguage;
}

@end
