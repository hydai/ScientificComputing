function output = PUSHEEN(input)
    OK = 'We are pusheen, ya!';
    FAIL = 'Not a pusheen, QAQ';
    
    % parsing tokens
    tokens = textscan(input.meowString, '%s');
    numOfToken = size(tokens{1});
    
    % numOfToken dismatch handler
    if (input.numOfToken ~= numOfToken(1))
        status = FAIL;
        output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
        return;
    end
    % check syntax
    % step 1: check Pusheen
    if (strcmp(tokens{1}(1), 'pusheen') == false && strcmp(tokens{1}(1), 'meow') == false)
        status = FAIL;
        output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
        return;
    end
    % step 2: check if is Eat/Play/Say
    % Eat type
    if (strcmp(tokens{1}(2), 'eat'))
        if ((strcmp(tokens{1}(3), 'cake') == 0 && strcmp(tokens{1}(3), 'cookie') == 0) || numOfToken(1) > 3)
            status = FAIL;
            output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
            return;
        end
    % Play type
    elseif (strcmp(tokens{1}(2), 'play'))
        if ((strcmp(tokens{1}(3), 'ball') == 0 && strcmp(tokens{1}(3), 'computer') == 0) || numOfToken(1) > 3)
            status = FAIL;
            output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
            return;
        end
    % Say type
    elseif (strcmp(tokens{1}(2), 'I'))
        if (strcmp(tokens{1}(3), 'am') == 0 || strcmp(tokens{1}(4), 'pusheen') == 0)
            status = FAIL;
            output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
            return;
        end
        % check meow
        if (numOfToken(1) > 4)
            for i = 5:numOfToken(1)
                if (strcmp(tokens{1}(i), 'meow') == 0)
                    status = FAIL;
                    output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
                    return;
                end
            end
        end
    else
        status = FAIL;
        output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
        return;
    end
    status = OK;
    output = struct('numOfToken', numOfToken(1), 'meowString', input.meowString, 'status', status);
end