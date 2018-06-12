//
//  CBLDatabaseEndpoint.m
//  CouchbaseLite
//
//  Copyright (c) 2018 Couchbase, Inc. All rights reserved.
//
//  Licensed under the Couchbase License Agreement (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//  https://info.couchbase.com/rs/302-GJY-034/images/2017-10-30_License_Agreement.pdf
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#ifdef COUCHBASE_ENTERPRISE
#import "CBLDatabaseEndpoint.h"
#import "CBLDatabase.h"

@implementation CBLDatabaseEndpoint

@synthesize database=_database;

- (instancetype) initWithDatabase: (CBLDatabase*)database {
    CBLAssertNotNil(database);
    
    self = [super init];
    if (self) {
        _database = database;
    }
    return self;
}


- (NSString*) description {
    return [NSString stringWithFormat: @"DB[%@]", _database.name];
}

@end
#endif