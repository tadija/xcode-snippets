// Shared Instance
// Returns shared instance of object (dispatched once)
//
// IDECodeSnippetCompletionPrefix: aeSharedInstance
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: B1CB71D0-FB7A-44AA-8FF6-C883BE7A2AA3
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (instancetype)sharedInstance
{
    static id sharedInstance;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}