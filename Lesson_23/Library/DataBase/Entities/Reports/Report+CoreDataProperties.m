//
//  Report+CoreDataProperties.m
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//
//

#import "Report+CoreDataProperties.h"

@implementation Report (CoreDataProperties)

+ (NSFetchRequest<Report *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Report"];
}

@dynamic name;
@dynamic nominations;

@end
