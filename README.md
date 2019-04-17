# subString
截取字符串


/**
 截取字符串
 
 @param string 需要截取的字符串
 例如:
 需要截取的字符串的格式为
 friendscoin:FFuYnfVsuRij7cb9wCtstwxGK2ExY14DqH?amount=111&label=222&message=444
 
 @param matchStr 匹配的关键字 例如:friendscoin / label / amount
 @return 结果
 */
+(NSString *)subString:(NSString *)string matchString:(NSString *)matchStr;
