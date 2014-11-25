numOfTestcase = 30;
passCounter = 0;
% Correct cases
Test1   = struct ('numOfToken', 3, 'meowString', 'pusheen eat cake');
Ans1    = struct ('numOfToken', 3, 'meowString', 'pusheen eat cake', 'status', 'We are pusheen, ya!');
Output1 = PUSHEEN(Test1);
passCounter = passCounter + isequal(Output1, Ans1);
Test2   = struct ('numOfToken', 3, 'meowString', 'pusheen eat cookie');
Ans2    = struct ('numOfToken', 3, 'meowString', 'pusheen eat cookie', 'status', 'We are pusheen, ya!');
Output2 = PUSHEEN(Test2);
passCounter = passCounter + isequal(Output2, Ans2);
Test3   = struct ('numOfToken', 3, 'meowString', 'pusheen play ball');
Ans3    = struct ('numOfToken', 3, 'meowString', 'pusheen play ball', 'status', 'We are pusheen, ya!');
Output3 = PUSHEEN(Test3);
passCounter = passCounter + isequal(Output3, Ans3);
Test4   = struct ('numOfToken', 3, 'meowString', 'pusheen play computer');
Ans4    = struct ('numOfToken', 3, 'meowString', 'pusheen play computer', 'status', 'We are pusheen, ya!');
Output4 = PUSHEEN(Test4);
passCounter = passCounter + isequal(Output4, Ans4);
Test5   = struct ('numOfToken', 3, 'meowString', 'meow eat cake');
Ans5    = struct ('numOfToken', 3, 'meowString', 'meow eat cake', 'status', 'We are pusheen, ya!');
Output5 = PUSHEEN(Test5);
passCounter = passCounter + isequal(Output5, Ans5);
Test6   = struct ('numOfToken', 3, 'meowString', 'meow eat cookie');
Ans6    = struct ('numOfToken', 3, 'meowString', 'meow eat cookie', 'status', 'We are pusheen, ya!');
Output6 = PUSHEEN(Test6);
passCounter = passCounter + isequal(Output6, Ans6);
Test7   = struct ('numOfToken', 3, 'meowString', 'meow play ball');
Ans7    = struct ('numOfToken', 3, 'meowString', 'meow play ball', 'status', 'We are pusheen, ya!');
Output7 = PUSHEEN(Test7);
passCounter = passCounter + isequal(Output7, Ans7);
Test8   = struct ('numOfToken', 3, 'meowString', 'meow play computer');
Ans8    = struct ('numOfToken', 3, 'meowString', 'meow play computer', 'status', 'We are pusheen, ya!');
Output8 = PUSHEEN(Test8);
passCounter = passCounter + isequal(Output8, Ans8);
Test9   = struct ('numOfToken', 4, 'meowString', 'pusheen I am pusheen');
Ans9    = struct ('numOfToken', 4, 'meowString', 'pusheen I am pusheen', 'status', 'We are pusheen, ya!');
Output9 = PUSHEEN(Test9);
passCounter = passCounter + isequal(Output9, Ans9);
Test10  = struct ('numOfToken', 4, 'meowString', 'meow I am pusheen');
Ans10   = struct ('numOfToken', 4, 'meowString', 'meow I am pusheen', 'status', 'We are pusheen, ya!');
Output10 = PUSHEEN(Test10);
passCounter = passCounter + isequal(Output10, Ans10);
Test11  = struct ('numOfToken', 5, 'meowString', 'pusheen I am pusheen meow');
Ans11   = struct ('numOfToken', 5, 'meowString', 'pusheen I am pusheen meow', 'status', 'We are pusheen, ya!');
Output11 = PUSHEEN(Test11);
passCounter = passCounter + isequal(Output11, Ans11);
Test12  = struct ('numOfToken', 6, 'meowString', 'meow I am pusheen meow meow');
Ans12   = struct ('numOfToken', 6, 'meowString', 'meow I am pusheen meow meow', 'status', 'We are pusheen, ya!');
Output12 = PUSHEEN(Test12);
passCounter = passCounter + isequal(Output12, Ans12);
Test13  = struct ('numOfToken', 7, 'meowString', 'pusheen I am pusheen meow meow meow');
Ans13   = struct ('numOfToken', 7, 'meowString', 'pusheen I am pusheen meow meow meow', 'status', 'We are pusheen, ya!');
Output13 = PUSHEEN(Test13);
passCounter = passCounter + isequal(Output13, Ans13);
Test14  = struct ('numOfToken', 8, 'meowString', 'meow I am pusheen meow meow meow meow');
Ans14   = struct ('numOfToken', 8, 'meowString', 'meow I am pusheen meow meow meow meow', 'status', 'We are pusheen, ya!');
Output14 = PUSHEEN(Test14);
passCounter = passCounter + isequal(Output14, Ans14);
% Incorrect cases
% mismatch number of token with meowString
Test15  = struct ('numOfToken', 3, 'meowString', 'pusheen eat');
Ans15   = struct ('numOfToken', 2, 'meowString', 'pusheen eat', 'status', 'Not a pusheen, QAQ');
Output15 = PUSHEEN(Test15);
passCounter = passCounter + isequal(Output15, Ans15);
% wrong word in Pusheen
Test16  = struct ('numOfToken', 3, 'meowString', 'Pusheen eat cookie');
Ans16   = struct ('numOfToken', 3, 'meowString', 'Pusheen eat cookie', 'status', 'Not a pusheen, QAQ');
Output16 = PUSHEEN(Test16);
passCounter = passCounter + isequal(Output16, Ans16);
% wrong word in Play
Test17  = struct ('numOfToken', 3, 'meowString', 'pusheen play cake');
Ans17   = struct ('numOfToken', 3, 'meowString', 'pusheen play cake', 'status', 'Not a pusheen, QAQ');
Output17 = PUSHEEN(Test17);
passCounter = passCounter + isequal(Output17, Ans17);
% wrong word in Play
Test18  = struct ('numOfToken', 3, 'meowString', 'pusheen pLay computer');
Ans18   = struct ('numOfToken', 3, 'meowString', 'pusheen pLay computer', 'status', 'Not a pusheen, QAQ');
Output18 = PUSHEEN(Test18);
passCounter = passCounter + isequal(Output18, Ans18);
% wrong word in Pusheen
Test19  = struct ('numOfToken', 3, 'meowString', 'Meow eat cake');
Ans19   = struct ('numOfToken', 3, 'meowString', 'Meow eat cake', 'status', 'Not a pusheen, QAQ');
Output19 = PUSHEEN(Test19);
passCounter = passCounter + isequal(Output19, Ans19);
% wrong word in Eat
Test20  = struct ('numOfToken', 3, 'meowString', 'meow eat computer');
Ans20   = struct ('numOfToken', 3, 'meowString', 'meow eat computer', 'status', 'Not a pusheen, QAQ');
Output20 = PUSHEEN(Test20);
passCounter = passCounter + isequal(Output20, Ans20);
% wrong word in All three place
Test21  = struct ('numOfToken', 3, 'meowString', 'Meow Play cookie');
Ans21   = struct ('numOfToken', 3, 'meowString', 'Meow Play cookie', 'status', 'Not a pusheen, QAQ');
Output21 = PUSHEEN(Test21);
passCounter = passCounter + isequal(Output21, Ans21);
% wrong word in All three place
Test22  = struct ('numOfToken', 3, 'meowString', 'meow meow meow');
Ans22   = struct ('numOfToken', 3, 'meowString', 'meow meow meow', 'status', 'Not a pusheen, QAQ');
Output22 = PUSHEEN(Test22);
passCounter = passCounter + isequal(Output22, Ans22);
% wrong word in Say
Test23  = struct ('numOfToken', 4, 'meowString', 'pusheen I am meow');
Ans23   = struct ('numOfToken', 4, 'meowString', 'pusheen I am meow', 'status', 'Not a pusheen, QAQ');
Output23 = PUSHEEN(Test23);
passCounter = passCounter + isequal(Output23, Ans23);
% mismatch number of token
Test24  = struct ('numOfToken', 6, 'meowString', 'meow I am pusheen meow');
Ans24   = struct ('numOfToken', 5, 'meowString', 'meow I am pusheen meow', 'status', 'Not a pusheen, QAQ');
Output24 = PUSHEEN(Test24);
passCounter = passCounter + isequal(Output24, Ans24);
% wrong word in Say
Test25  = struct ('numOfToken', 5, 'meowString', 'pusheen I am pusheen pusheen');
Ans25   = struct ('numOfToken', 5, 'meowString', 'pusheen I am pusheen pusheen', 'status', 'Not a pusheen, QAQ');
Output25 = PUSHEEN(Test25);
passCounter = passCounter + isequal(Output25, Ans25);
% wrong type in Say
Test26  = struct ('numOfToken', 6, 'meowString', 'meow I am pusheen meow pusheen');
Ans26   = struct ('numOfToken', 6, 'meowString', 'meow I am pusheen meow pusheen', 'status', 'Not a pusheen, QAQ');
Output26 = PUSHEEN(Test26);
passCounter = passCounter + isequal(Output26, Ans26);
% wrong word in Say
Test27  = struct ('numOfToken', 7, 'meowString', 'pusheen I am am meow meow meow');
Ans27   = struct ('numOfToken', 7, 'meowString', 'pusheen I am am meow meow meow', 'status', 'Not a pusheen, QAQ');
Output27 = PUSHEEN(Test27);
passCounter = passCounter + isequal(Output27, Ans27);
% wrong word in Say
Test28  = struct ('numOfToken', 8, 'meowString', 'meow I pusheen pusheen meow meow meow meow');
Ans28   = struct ('numOfToken', 8, 'meowString', 'meow I pusheen pusheen meow meow meow meow', 'status', 'Not a pusheen, QAQ');
Output28 = PUSHEEN(Test28);
passCounter = passCounter + isequal(Output28, Ans28);
% wrong word in Say
Test29  = struct ('numOfToken', 8, 'meowString', 'meow I meow pusheen meow meow meow meow');
Ans29   = struct ('numOfToken', 8, 'meowString', 'meow I meow pusheen meow meow meow meow', 'status', 'Not a pusheen, QAQ');
Output29 = PUSHEEN(Test29);
passCounter = passCounter + isequal(Output29, Ans29);
% wrong word in Say
Test30  = struct ('numOfToken', 9, 'meowString', 'meow I am pusheen meow I am pusheen meow');
Ans30   = struct ('numOfToken', 9, 'meowString', 'meow I am pusheen meow I am pusheen meow', 'status', 'Not a pusheen, QAQ');
Output30 = PUSHEEN(Test30);
passCounter = passCounter + isequal(Output30, Ans30);
% check if pass or not
if (passCounter == numOfTestcase)
    fprintf('PASS\n');
else
    fprintf('INCORRECT\n');
end
