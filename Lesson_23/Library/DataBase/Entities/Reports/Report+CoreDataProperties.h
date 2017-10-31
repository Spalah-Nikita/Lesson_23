//
//  Report+CoreDataProperties.h
//  Lesson_23
//
//  Created by Nikita Vintonovich on 10/31/17.
//  Copyright © 2017 Vint-Rock. All rights reserved.
//
//

#import "Report+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Report (CoreDataProperties)

+ (NSFetchRequest<Report *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Nomination *> *nominations;

@end

@interface Report (CoreDataGeneratedAccessors)

- (void)addNominationsObject:(Nomination *)value;
- (void)removeNominationsObject:(Nomination *)value;
- (void)addNominations:(NSSet<Nomination *> *)values;
- (void)removeNominations:(NSSet<Nomination *> *)values;

@end

NS_ASSUME_NONNULL_END
