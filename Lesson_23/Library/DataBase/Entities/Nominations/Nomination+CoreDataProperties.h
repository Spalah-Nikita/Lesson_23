//
//  Nomination+CoreDataProperties.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//
//

#import "Nomination+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Nomination (CoreDataProperties)

+ (NSFetchRequest<Nomination *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) BOOL type;
@property (nullable, nonatomic, retain) Report *report;

@end

NS_ASSUME_NONNULL_END
