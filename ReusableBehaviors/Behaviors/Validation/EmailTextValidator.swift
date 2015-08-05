//
//  EmailTextValidator.swift
//  ReusableBehaviors
//
//  Created by Scott Williams on 8/5/15.
//  Copyright (c) 2015 Tallwave. All rights reserved.
//

import UIKit

/**
Checks if a string is a valid email. The pattern it matches against is 
intentionally naive. The [official email regex](http://www.ex-parrot.com/pdw/Mail-RFC822-Address.html) 
is nearly as long as freaking Beowulf, and since emails are squirrelly little 
things, has a lot of false negatives. If you really want to do that knock 
yourself out.
*/
public class EmailTextValidator: RegularExpressionValidator {
    private let _pattern = "^\\S+@\\S+\\.\\S+$"
    
    /**
    The override removes IBInspectable, though since it's on the base class, it 
    will still show up in Interface Builder.
    */
    override var pattern: String {
        get { return _pattern }
        set {}
    }
}
