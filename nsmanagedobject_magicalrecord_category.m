// NSManagedObject MagicalRecord Category
// Template for creatng / getting NSManagedObject with MagicalRecord
//
// IDECodeSnippetCompletionPrefix: aeMagical
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 118BF1BF-ACBD-4AAA-AD9B-8974B163BA37
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
+ (<#NSManagedObject#> *)<#object#>With<#attribute#>:(NSNumber *)attribute
{
    <#NSManagedObject#> *object = nil;
    
    if (attribute) {
        // get from db if it already exists
        object = [<#NSManagedObject#> MR_findFirstByAttribute:@"<#attribute#>" withValue:attribute];
        
        if (!object) {
            // create if not exists
            object = [<#NSManagedObject#> MR_createEntity];
            
            // set its properties
            object.<#attribute#> = attribute;
            
            // save context
            [[NSManagedObjectContext MR_contextForCurrentThread] MR_saveToPersistentStoreAndWait];
        }
    }
    
    return object;
}