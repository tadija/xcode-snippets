// Motion Effect Group Property
// Property and getter for motion effect group
//
// IDECodeSnippetCompletionPrefix: aeMotion
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 272B5079-EFE3-4786-A2EC-88BE96102876
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
@property (nonatomic, strong) UIMotionEffectGroup *motionEffectGroup;

- (UIMotionEffectGroup *)motionEffectGroup
{
    if (!_motionEffectGroup) {
        // default motion value
        NSInteger const kMotionValue = 10;
        // horizontal motion effect
        UIInterpolatingMotionEffect *xAxis;
        xAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        xAxis.minimumRelativeValue = @(-kMotionValue);
        xAxis.maximumRelativeValue = @(kMotionValue);
        // vertical motion effect
        UIInterpolatingMotionEffect *yAxis;
        yAxis = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        yAxis.minimumRelativeValue = @(-kMotionValue);
        yAxis.maximumRelativeValue = @(kMotionValue);
        // motion effect group with horizontal and vertical motion effects
        _motionEffectGroup = [[UIMotionEffectGroup alloc] init];
        _motionEffectGroup.motionEffects = @[xAxis, yAxis];
    }
    return _motionEffectGroup;
}