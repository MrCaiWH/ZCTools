//
//  ZCQueue.h
//  ZCTools
//
//  Created by caiwanhong on 2024/2/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZCQueue : NSObject
/// 入队
/// - Parameter obj: 元素
- (void)enqueue:(id)obj;

/// 出队
- (id)dequeue;

/// 队列长度
- (NSInteger)count;

/// 队列是否为空
- (BOOL)isEmpty;
@end

NS_ASSUME_NONNULL_END
