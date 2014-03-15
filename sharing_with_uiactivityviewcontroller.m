// Sharing with UIActivityViewController
// Present UIActivityViewController with enabled activity types
//
// IDECodeSnippetCompletionPrefix: aeShareItem
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 4AEA91DA-D453-430E-91B9-3CB06C5A4D04
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)shareItem:(<#id#>)item
{
    // add items to share
    NSMutableArray *sharingItems = [NSMutableArray new];
    [sharingItems addObject:item];
    
    // get all system activity types
    NSArray *allActivityTypes = @[UIActivityTypePostToFacebook,
                                  UIActivityTypePostToTwitter,
                                  UIActivityTypePostToWeibo,
                                  UIActivityTypeMessage,
                                  UIActivityTypeMail,
                                  UIActivityTypePrint,
                                  UIActivityTypeCopyToPasteboard,
                                  UIActivityTypeAssignToContact,
                                  UIActivityTypeSaveToCameraRoll,
                                  UIActivityTypeAddToReadingList,
                                  UIActivityTypePostToFlickr,
                                  UIActivityTypePostToVimeo,
                                  UIActivityTypePostToTencentWeibo,
                                  UIActivityTypeAirDrop];
    
    // add enabled activity types
    NSArray *enabledActivityTypes = @[UIActivityTypeMail, UIActivityTypePostToTwitter, UIActivityTypePostToFacebook];
    
    // exclude disabled activity types
    NSMutableArray *excludedActivityTypes = [allActivityTypes mutableCopy];
    [enabledActivityTypes enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([excludedActivityTypes containsObject:obj]) {
            [excludedActivityTypes removeObject:obj];
        }
    }];
    
    // present UIActivityViewController
    UIActivityViewController *activityController = [[UIActivityViewController alloc] initWithActivityItems:sharingItems applicationActivities:nil];
    activityController.excludedActivityTypes = excludedActivityTypes;
    [self presentViewController:activityController animated:YES completion:nil];
}