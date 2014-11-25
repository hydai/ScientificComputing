%addpath utility/
addpath machineLearning/

MAXI = 5;
BlockSize = 8;

IMG = imread('annie19980405.jpg');
image(IMG);
[m, n, p] = size(IMG);

IMGData = zeros(m*n/BlockSize/BlockSize, BlockSize*BlockSize*3);
ct = 1;
for i = 1:BlockSize:m
    for j = 1:BlockSize:n
        IMGData(ct, 1:BlockSize*BlockSize*3) = reshape(IMG(i:i+BlockSize-1,j:j+BlockSize-1,1:3), 1, BlockSize*BlockSize*3);
        ct = ct + 1;
    end
end

IMGData = double(IMGData');
for outi = 1:MAXI
    centerNumber = 2^outi;
    center = kMeansClustering(IMGData, centerNumber);
    distMat = distPairwise(center, IMGData);
    [minValue, minIndex] = min(distMat);
    ct = 1;
    PUSHEENData = zeros(m, n, 3);
    for i = 1:BlockSize:m
        for j = 1:BlockSize:n
            PUSHEENData(i:i+BlockSize-1, j:j+BlockSize-1, 1:3) = reshape(center(:, minIndex(ct)), BlockSize, BlockSize, 3);
            ct = ct + 1;
        end
    end
    
    PUSHEENData = PUSHEENData./255;
    figure;
    image(PUSHEENData);
    title(['Code book size=', num2str(centerNumber), ', block=8x8, compression ratio=',num2str((n*m*p*8)/(outi*n*m/BlockSize/BlockSize+centerNumber*BlockSize*BlockSize*3*8))]);
    
end