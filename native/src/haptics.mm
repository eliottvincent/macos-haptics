#include <node_api.h>

#import <AppKit/AppKit.h>

static void PerformAlignmentFeedback() {
  @autoreleasepool {
    [[NSHapticFeedbackManager defaultPerformer]
      performFeedbackPattern:NSHapticFeedbackPatternAlignment
      performanceTime:NSHapticFeedbackPerformanceTimeDefault];
  }
}

static napi_value PerformAlignment(
  napi_env environment,
  napi_callback_info callbackInformation
) {
  (void)callbackInformation;

  if ([NSThread isMainThread]) {
    PerformAlignmentFeedback();
  } else {
    dispatch_async(dispatch_get_main_queue(), ^{
      PerformAlignmentFeedback();
    });
  }

  napi_value result;
  napi_get_undefined(environment, &result);

  return result;
}

static napi_value Initialize(napi_env environment, napi_value exports) {
  napi_value performAlignment;

  napi_create_function(
    environment,
    "performAlignment",
    NAPI_AUTO_LENGTH,
    PerformAlignment,
    nullptr,
    &performAlignment
  );

  napi_set_named_property(
    environment,
    exports,
    "performAlignment",
    performAlignment
  );

  return exports;
}

NAPI_MODULE(NODE_GYP_MODULE_NAME, Initialize)
