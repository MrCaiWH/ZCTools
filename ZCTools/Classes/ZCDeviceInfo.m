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

@end
