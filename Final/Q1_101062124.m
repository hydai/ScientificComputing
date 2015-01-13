function output = Q1_101062124(frame, polyOrder)
frameLen = (1:length(frame))';
A = [ones(size(frameLen))];
for i = 1:polyOrder
    A = cat(2, A, frameLen.^i);
end
frame = frame';
theta = A\frame;
output = frame - A*theta;
output = output';
end
