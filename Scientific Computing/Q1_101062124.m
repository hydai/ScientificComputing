function output = Q1_101062124(front, back)
    ppFront = fieldnames(front);
    ppBack = fieldnames(back);
    ppdiffF2B = setdiff(ppFront, ppBack);
    ppOutput = cat(1, fieldnames(back), ppdiffF2B);
    ind = 1;
    for i = 1:numel(front)
        for j = 1:numel(ppOutput)
            if (isfield(front(i), ppOutput(j)) == 1)
                output(ind).(ppOutput{j}) = front(i).(ppOutput{j});
            else
                output(ind).(ppOutput{j}) = 'OAO';
                output(ind).(ppOutput{j}) = [];
            end
        end
        ind = ind + 1;
    end
    for i = 1:numel(back)
        for j = 1:numel(ppOutput)
            if (isfield(back(i), ppOutput(j)) == 1)
                output(ind).(ppOutput{j}) = back(i).(ppOutput{j});
            else
                output(ind).(ppOutput{j}) = 'OAO';
                output(ind).(ppOutput{j}) = [];
            end
        end
        ind = ind + 1;
    end
end

