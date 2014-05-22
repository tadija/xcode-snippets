// Custom Auto Layout View
// Template for implementing custom view with auto layout
//
// IDECodeSnippetCompletionPrefix: aeAutolayoutView
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 0B010543-6D3E-45F8-9D28-4C6431702D03
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
@property(nonatomic, strong) UIView *subview;

#pragma mark - Lifecycle

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self createSubiewsAndHierarchy];
}

#pragma mark - Auto Layout

- (void)createSubiewsAndHierarchy
{
    self.backgroundColor = [UIColor clearColor];
    
    // init views as properties
    self.subview = [[UIView alloc] init];
    
    // add subviews
    [self addSubview:self.subview];
    
    [self createAutoLayout];
}

- (void)createAutoLayout
{
    // get views as local variables
    UIView *subview = self.subview;
    
    // prepare views for autolayout
    NSDictionary *views = NSDictionaryOfVariableBindings(subview);
    [views enumerateKeysAndObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id key, UIView *view, BOOL *stop) {
        view.translatesAutoresizingMaskIntoConstraints = NO;
    }];
    
    // create auto layout constraints
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[subview]|" options:0 metrics:0 views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[subview]|" options:0 metrics:0 views:views]];
}

#pragma mark - UI

- (void)updateUI
{
    // refresh UI
    [self setNeedsDisplay];
}