//self 就相当于一个 this 指针
#import <Foundation/Foundation.h>

@interface person : NSObject
{
    int _age;
}
- (void)setAge:(int)age;
- (int)age;
- (void)test;
- (void)bark;
@end

@implementation person

- (void)setAge:(int)age
{
    self->_age = age;
}
- (int)age
{
    return self->_age;
}
- (void)bark
{
    NSLog(@"haha");
}
- (void)test
{
    [self bark];
    NSLog(@"person is %d years old",self->_age);
}
@end

int main()
{
    person *p = [person new];
    [p setAge:10];
    [p test];
    return 0;
}