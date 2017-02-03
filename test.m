@implementation TESTSomething

- (void)setValidationMessageHidden:(BOOL)hidden {
    [_someLabel setHidden:hidden];
    _secondSpace.priority = hidden ? 111 : 250;
    _firstSpace.priority = hidden ? 250 : 111;
    
    if (!hidden) {
        [_someLabel setText:self.item.co];
    }
}

- (void)fillCurrency {
    [_currency setText:self.item.currency];
    CGRect frame = _currency.frame;
    frame.size.width = self.item.currency != nil ? 20. : 0.;
    frame.size.height = _textField.frame.size.height;
    [_currency setFrame:frame];
}

@end