//
//  ZCQueue.m
//  ZCTools
//
//  Created by caiwanhong on 2024/2/24.
//

#import "ZCQueue.h"

@interface ZCQueue ()
@property (nonatomic, strong) NSMutableArray *queueArray;
@end

@implementation ZCQueue
- (instancetype)init {
    self = [super init];
    if (self) {
        _queueArray = [NSMutableArray array];
    }
    return self;
}

- (void)enqueue:(id)obj {
    [self.queueArray addObject:obj];
}

- (id)dequeue {
    if ([self.queueArray count] == 0) {
        return nil;
    }
    id obj = [self peek];
    [self.queueArray removeObjectAtIndex:0];
    return obj;
}

- (id)peek {
    if ([self.queueArray count] == 0) {
        return nil;
    }
    return [self.queueArray firstObject];
}

- (NSInteger)count {
    return [self.queueArray count];
}

- (BOOL)isEmpty {
    return ([self.queueArray count] == 0);
}
@end
