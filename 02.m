#import <Foundation/Foundation.h>
@interface person : NSObject

{
    
}

+ (void)printClassName;


@end

@implementation person

+ (void)printClassName
{
    NSLog(@"The name of class is person");
}

@end

int main()
{
    [person printClassName];
    return 0;
}