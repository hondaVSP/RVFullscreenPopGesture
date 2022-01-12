//
//  UINavigationController+RVFullscreenPopGesture.m
//  vsp-vk-iOS
//
//  Created by 蔡宇航 on 2022/1/12.
//

#import "UINavigationController+RVFullscreenPopGesture.h"
#import <objc/runtime.h>
#import <FDFullscreenPopGesture/UINavigationController+FDFullscreenPopGesture.h>
#import <YYKit/NSObject+YYAdd.h>

@implementation UINavigationController (RVFullscreenPopGesture)

+ (void)load
{
    /**
     * Note：在FD与系统交换之后，RV交换系统，其实是RV交换FD
     */
    // Inject "-pushViewController:animated:"
    SEL originalSel = NSSelectorFromString(@"pushViewController:animated:");
    Method originalMethod = class_getInstanceMethod(self, originalSel);
    Method swizzledMethod = class_getInstanceMethod(self, @selector(rv_pushViewController:animated:));
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

- (void)rv_pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if ([viewController isKindOfClass:NSClassFromString(@"HCViewController")] ||
        [viewController isKindOfClass:NSClassFromString(@"BaseViewController")] ||
        [viewController isKindOfClass:NSClassFromString(@"WMPageController")] ||
        [viewController isKindOfClass:NSClassFromString(@"RVViewController")])
    {
        [self rv_pushViewController:viewController animated:animated];
    }
    else
    {
        SEL fd_sel = NSSelectorFromString(@"fd_pushViewController:animated:");
        [self performSelectorWithArgs:fd_sel, viewController, animated];
        return;
    }
}

@end
