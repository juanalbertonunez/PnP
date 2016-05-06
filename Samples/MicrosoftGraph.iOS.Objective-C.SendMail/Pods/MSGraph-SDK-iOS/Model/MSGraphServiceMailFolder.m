/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSGraphServiceModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSGraphServiceMailFolder
 *
 */
@implementation MSGraphServiceMailFolder


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"displayName", @"displayName", @"parentFolderId", @"parentFolderId", @"childFolderCount", @"childFolderCount", @"unreadItemCount", @"unreadItemCount", @"totalItemCount", @"totalItemCount", @"messages", @"messages", @"childFolders", @"childFolders", @"id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#microsoft.graph.mailFolder";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_displayName = (![dic objectForKey: @"displayName"] || [ [dic objectForKey: @"displayName"] isKindOfClass:[NSNull class]] )?_displayName:[[dic objectForKey: @"displayName"] copy];
		_parentFolderId = (![dic objectForKey: @"parentFolderId"] || [ [dic objectForKey: @"parentFolderId"] isKindOfClass:[NSNull class]] )?_parentFolderId:[[dic objectForKey: @"parentFolderId"] copy];
		_childFolderCount = (![dic objectForKey: @"childFolderCount"] || [ [dic objectForKey: @"childFolderCount"] isKindOfClass:[NSNull class]] )?_childFolderCount:[[dic objectForKey: @"childFolderCount"] intValue];
		_unreadItemCount = (![dic objectForKey: @"unreadItemCount"] || [ [dic objectForKey: @"unreadItemCount"] isKindOfClass:[NSNull class]] )?_unreadItemCount:[[dic objectForKey: @"unreadItemCount"] intValue];
		_totalItemCount = (![dic objectForKey: @"totalItemCount"] || [ [dic objectForKey: @"totalItemCount"] isKindOfClass:[NSNull class]] )?_totalItemCount:[[dic objectForKey: @"totalItemCount"] intValue];

        if([dic objectForKey: @"messages"] != [NSNull null]){
            _messages = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"messages"]) {
                [_messages addObject:[[MSGraphServiceMessage alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_messages resetChangedFlag];
        }
        

        if([dic objectForKey: @"childFolders"] != [NSNull null]){
            _childFolders = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"childFolders"]) {
                [_childFolders addObject:[[MSGraphServiceMailFolder alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_childFolders resetChangedFlag];
        }
        
		self._id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.displayName copy];if (curVal!=nil) [dic setValue: curVal forKey: @"displayName"];}
	{id curVal = [self.parentFolderId copy];if (curVal!=nil) [dic setValue: curVal forKey: @"parentFolderId"];}
	{[dic setValue: [NSNumber numberWithInt: self.childFolderCount] forKey: @"childFolderCount"];}
	{[dic setValue: [NSNumber numberWithInt: self.unreadItemCount] forKey: @"unreadItemCount"];}
	{[dic setValue: [NSNumber numberWithInt: self.totalItemCount] forKey: @"totalItemCount"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.messages) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"messages"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.childFolders) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"childFolders"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
    [dic setValue: @"#microsoft.graph.mailFolder" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.displayName;
    if([self.updatedValues containsObject:@"displayName"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"displayName"];
            }
    }
	{id curVal = self.parentFolderId;
    if([self.updatedValues containsObject:@"parentFolderId"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"parentFolderId"];
            }
    }
 if([self.updatedValues containsObject:@"childFolderCount"])
            { [dic setValue: [NSNumber numberWithInt: self.childFolderCount] forKey: @"childFolderCount"];
} if([self.updatedValues containsObject:@"unreadItemCount"])
            { [dic setValue: [NSNumber numberWithInt: self.unreadItemCount] forKey: @"unreadItemCount"];
} if([self.updatedValues containsObject:@"totalItemCount"])
            { [dic setValue: [NSNumber numberWithInt: self.totalItemCount] forKey: @"totalItemCount"];
}	{id curVal = self.messages;
    if([self.updatedValues containsObject:@"messages"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"messages"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.messages) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"messages"];
        }
        
            }}
	{id curVal = self.childFolders;
    if([self.updatedValues containsObject:@"childFolders"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"childFolders"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.childFolders) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"childFolders"];
        }
        
            }}
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
    return dic;
}


/** Setter implementation for property displayName
 *
 */
- (void) setDisplayName: (NSString *) value {
    _displayName = value;
    [self valueChangedFor:@"displayName"];
}
       
/** Setter implementation for property parentFolderId
 *
 */
- (void) setParentFolderId: (NSString *) value {
    _parentFolderId = value;
    [self valueChangedFor:@"parentFolderId"];
}
       
/** Setter implementation for property childFolderCount
 *
 */
- (void) setChildFolderCount: (int) value {
    _childFolderCount = value;
    [self valueChangedFor:@"childFolderCount"];
}
       
/** Setter implementation for property unreadItemCount
 *
 */
- (void) setUnreadItemCount: (int) value {
    _unreadItemCount = value;
    [self valueChangedFor:@"unreadItemCount"];
}
       
/** Setter implementation for property totalItemCount
 *
 */
- (void) setTotalItemCount: (int) value {
    _totalItemCount = value;
    [self valueChangedFor:@"totalItemCount"];
}
       
/** Setter implementation for property messages
 *
 */
- (void) setMessages: (NSMutableArray *) value {
    _messages = value;
    [self valueChangedFor:@"messages"];
}
       
/** Setter implementation for property childFolders
 *
 */
- (void) setChildFolders: (NSMutableArray *) value {
    _childFolders = value;
    [self valueChangedFor:@"childFolders"];
}
       

@end