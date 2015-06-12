//
//  main.m
//  wordAdventure
//
//  Created by Jason Wang on 6/12/15.
//  Copyright (c) 2015 Jason Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Please enter your name: ");
        char myName[256];
        fgets(myName, 256, stdin);
        printf("Welcome %s to word adventure. What is your Occupation?", myName);
        char occupation[256];
        fgets(occupation, 256, stdin);
        printf("\nSo, I see that you are a %s. Would you ever consider change your field to iOS developer?", occupation);
        char isInterestediOSdev[256];
        fgets(isInterestediOSdev, 256, stdin);
        
        NSString *userInput = [NSString stringWithCString:isInterestediOSdev encoding:1];
        userInput = [userInput lowercaseString];
        if ([userInput containsString:@"YES"] || [userInput containsString:@"yes"] || [userInput containsString:@"Yes"]) {
            printf("Great! You have come to the right place.");
            printf("\n \nSo you have a couple of options \n1) You can Google Objective-c courses that you can take online. \n2) Ask one of your Tech friend which iOS program is good for you.");
            printf("\nWhich one would you pick?\n");
            int pathChoice1;
            scanf("%d", &pathChoice1);
            if (pathChoice1 == 1) {
                // chose Google Online course
                printf("Great, your a selflearner. \n \nSo, I found a couple of online courses for you and they are all free. \n \n1)Codeacademy.com  \n2)Lynda.com \n3)Coursera.org");
                int onlineCourseChoice;
                scanf("%d", &onlineCourseChoice);
                if (onlineCourseChoice == 1) {
                    printf("Alight! so How many month are you planning to finish studying Objective-C");
                    int timeStudy1;
                    scanf("%d", &timeStudy1);
                    printf("Sorry, Even with %d month of studying Objective-C won't help you land any Jobs due to no business, communication skills, and profolio. \nYou have FAIL the GAME", timeStudy1);
                } else if (onlineCourseChoice ==2) {
                    printf("Alight! so How many month are you planning to finish studying Objective-C");
                    int timeStudy2;
                    scanf("%d", &timeStudy2);
                    printf("Sorry, Even with %d month of studying Objective-C won't help you land any Jobs due to no business, communication skills, and profolio. \nYou have FAIL the GAME", timeStudy2);
                } else if (onlineCourseChoice == 3) {
                    printf("Alight! so How many month are you planning to finish studying Objective-C");
                    int timeStudy3;
                    scanf("%d", &timeStudy3);
                    printf("Sorry, Even with %d month of studying Objective-C won't help you land any Jobs due to no business, communication skills, and profolio. \nYou have FAIL the GAME", timeStudy3);
                } else {
                    printf("Invalid Entry");
                }
                
            } else if (pathChoice1 == 2){
                printf("Great Choice! You just asked one of friend that works in Tech field, and it just happend that he knows a friend who tweeted about C4Q and they have a iOS dev program call AccessCode");
                printf("\n \nHe askes you, 'Are you commited to finish this 9month program? \n1)Yes \n2)No \n");
                int commitC4Q;
                scanf("%d", &commitC4Q);
                if (commitC4Q == 1) {
                    printf("Great, you are determine to finish this course.");
                    printf("Are you able to commit 20hr+ time outside of the program to improve your coding skills? \n1)Yes, this is my DREAM! \n2)No, that's too much time commitment");
                    int timeCommit;
                    scanf("%d", &timeCommit);
                    if (timeCommit == 1) {
                        printf("Awesome!!! Now 9month Later! Congradulation!!! you finished the course. You are an excellent developer and you found a job that you always wanted");
                    } else {
                        printf("Sorry, even though you finished the course, due to your little time commitment you have failed to write an efficent code");
                    }
                    
                } else if (commitC4Q == 2) {
                    printf("Sorry, you just go kicked out of the program due to tardiness and excessive absence and you were unable to catch up.");
                }
                
            }
            
            
            
        }
        return 0;
    }
}
