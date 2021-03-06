//
//  AMImageResult.m
//
//  Take a look to my repos at http://github.com/vilanovi
//
// Copyright (c) 2013 Joan Martin, vilanovi@gmail.com.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
// of the Software, and to permit persons to whom the Software is furnished to do
// so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
// INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
// PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE

#import "AMImageResult.h"

@implementation AMImageResult

+ (AMImageResult*)resultWithDbID:(NSInteger)dbID
{
    return [[AMImageResult alloc] initWithDbID:dbID];
}

- (id)initWithDbID:(NSInteger)dbID
{
    self = [super init];
    if (self)
    {
        _dbID = dbID;
    }
    return self;
}

- (NSString*)description
{
    return [NSString stringWithFormat:@"%@: [key:%ld] [identifier:%@] [creationDate:%f] [accessDate:%f] [options:%@] [size:%@]", [super description], (long)_dbID, _identifier, _creationDate, _accessDate, _options, NSStringFromCGSize(_size)];
}

@end
