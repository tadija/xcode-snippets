// App Options
// Class for reading and writing app options via NSUserDefaults
//
// IDECodeSnippetCompletionPrefix: aeOptions
// IDECodeSnippetCompletionScopes: [TopLevel]
// IDECodeSnippetIdentifier: 332ADFB5-31F0-44CB-A26E-C1B853F405E2
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#import "AppOptions.h"


static NSString * const kRandomOptionKey = @"randomOption";


@implementation AppOptions

#pragma mark - Lifecycle

+ (instancetype)sharedInstance
{
    static id sharedInstance;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

#pragma mark - Register defaults and persisting

- (void)registerDefaults
{
    NSString *defaultOptionsPath = [[NSBundle mainBundle] pathForResource:@"AppOptions" ofType:@"plist"];
    NSDictionary *defaultOptions = [NSDictionary dictionaryWithContentsOfFile:defaultOptionsPath];
    [[NSUserDefaults standardUserDefaults] registerDefaults:defaultOptions];
}

- (void)saveOptions
{
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - Options

- (BOOL)randomOption
{
    return [[NSUserDefaults standardUserDefaults] boolForKey:kRandomOptionKey];
}

- (void)setRandomOption:(BOOL)randomOption
{
    [[NSUserDefaults standardUserDefaults] setBool:randomOption forKey:kRandomOptionKey];
}

@end