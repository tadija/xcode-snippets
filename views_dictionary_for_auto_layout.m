// Views Dictionary for Auto Layout
// Template for using views with auto layout
//
// IDECodeSnippetCompletionPrefix: aeViews
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: E154DECB-D59D-43AD-9D33-7CAA8FDDF83B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    // prepare views for autolayout
NSDictionary *views = NSDictionaryOfVariableBindings(<#views#>);
    [views enumerateKeysAndObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id key, UIView *view, BOOL *stop) {
        view.translatesAutoresizingMaskIntoConstraints = NO;
    }];
