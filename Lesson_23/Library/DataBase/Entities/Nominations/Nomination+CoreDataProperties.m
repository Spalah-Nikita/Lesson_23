//
//  Nomination+CoreDataProperties.m
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//
//

#import "Nomination+CoreDataProperties.h"

@implementation Nomination (CoreDataProperties)

+ (NSFetchRequest<Nomination *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Nomination"];
}

@dynamic name;
@dynamic type;
@dynamic report;

@end
