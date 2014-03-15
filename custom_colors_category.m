// Custom Colors Category
// New color in custom colors category
//
// IDECodeSnippetCompletionPrefix: aeColor
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: EF16B815-6F63-4B7B-9B78-BB803DBA31A0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (UIColor *)ae<#Name#>Color
{
    static UIColor *color = nil;
    if (!color) color = [UIColor <#color#>];
    return color;
}