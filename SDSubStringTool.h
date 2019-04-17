






#import <Foundation/Foundation.h>



@interface SDSubStringTool : NSObject



/**
 截取字符串
 
 @param string 需要截取的字符串
 例如:
 需要截取的字符串的格式为
 title1:FFuYnfVsuRij7cb9wCtstwxGK2ExY14DqH?title2=111&title3=222&title4=444
 
 @param matchStr 匹配的关键字 例如:title1 / title2 / title3
 @return 结果
 */
+(NSString *)subString:(NSString *)string matchString:(NSString *)matchStr;


//字符串的格式为title1:content1?title2=content2?title3=content3?title4=content4
+(NSString *)subQuestionMarkString:(NSString *)string matchString:(NSString *)matchStr;

@end

