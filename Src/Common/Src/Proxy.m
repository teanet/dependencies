#import "Proxy.h"

@interface ProxyMocks ()

@property (nonatomic, copy, readwrite) NSArray<NSObject *> *mocks;

@end

@implementation ProxyMocks

- (instancetype)initWithMocks:(NSArray *)mocks
{
	self = [super init];
	if (self == nil) return nil;
	return self;
}

- (BOOL)respondsToSelector:(SEL)aSelector
{
	for (id mock in self.mocks) {
		if ([mock respondsToSelector:aSelector]) {
			return YES;
		}
	}
	return NO;
}

- (NSMethodSignature*)methodSignatureForSelector:(SEL)selector
{
	for (NSObject *mock in self.mocks) {
		if ([mock respondsToSelector:selector]) {
			NSMethodSignature* signature = [mock methodSignatureForSelector:selector];
			if (signature != nil) {
				return  signature;
			}
		}
	}
//	NSMethodSignature* signature = [self.mainDelegate methodSignatureForSelector:selector];
//	if (!signature) {
//		signature = [self.supplementaryDelegate methodSignatureForSelector:selector];
//	}
//	return signature;
	return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
	SEL aSelector = [anInvocation selector];
	for (id mock in self.mocks) {
		if ([mock respondsToSelector:aSelector]) {
			[anInvocation invokeWithTarget:mock];
		}
	}
//	if ([self.mainDelegate respondsToSelector:aSelector]) {
//		[anInvocation invokeWithTarget:self.mainDelegate];
//	}
//	if ([self.supplementaryDelegate respondsToSelector:aSelector]) {
//		[anInvocation invokeWithTarget:self.supplementaryDelegate];
//	}
}


@end
