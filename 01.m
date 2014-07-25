#import <Foundation/Foundation.h>

@interface student : NSObject
{
    //@public
    int age;
}

- (void)study;
- (void)setAge:(int)a;

@end

@implementation student

- (void)study
{
    NSLog(@"%d years old student is learning",age);
}
- (void)setAge:(int)a
{
    if(a <= 0)
    {
        NSLog(@"Error");
        a = 1;
    }
    age =a ;
}

@end

int main()
{
    student *stu = [student new];
    //stu->age = 20;
    [stu setAge:10];
    [stu study];
}