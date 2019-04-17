





#import "SDSubStringTool.h"

@implementation SDSubStringTool



//字符串的格式为 title1:FFuYnfVsuRij7cb9wCtstwxGK2ExY14DqH?title2=111&title3=222&title4=444

+(NSString *)subString:(NSString *)string matchString:(NSString *)matchStr{
    
    //先以?截成两段
    NSArray *subArray = [string componentsSeparatedByString:@"?"];
    
    //然后遍历这两段字符串
    for (NSString *str in subArray) {
        //判断这段字符串中是否包含匹配的字符串
        if ([str containsString:matchStr]) {
            
            //如果这个字符串中不包含: 说明是前半段
            if ([str containsString:@":"]) {
                
                NSString *subResultString = [str substringFromIndex:matchStr.length+1];
                
                return subResultString;
                
                //说明是后半段
            }else{
                
                //再以&符号分割
                NSArray *result = [str componentsSeparatedByString:@"&"];
                
                for (NSString *tempString in result) {
                    if ([tempString containsString:matchStr]) {
                        NSString *subResultString = [tempString substringFromIndex:matchStr.length+1];
                        
                        return subResultString;
                    }
                }
            }
            
            
        }
        
        
    }
    
    return nil;
    
    
}



//字符串的格式为 title1:content1?title2=content2?title3=content3?title4=content4
+(NSString *)subQuestionMarkString:(NSString *)string matchString:(NSString *)matchStr{
    
    //先以?截成多段
    NSArray *subArray = [string componentsSeparatedByString:@"?"];
    
    //然后遍历字符串
    for (NSString *str in subArray) {
        //判断这段字符串中是否包含匹配的字符串
        if ([str containsString:matchStr]) {

            NSString *subResultString = [str substringFromIndex:matchStr.length+1];
            
            return subResultString;
            
        }
        
        
    }
    
    return nil;
    
    
}

@end
