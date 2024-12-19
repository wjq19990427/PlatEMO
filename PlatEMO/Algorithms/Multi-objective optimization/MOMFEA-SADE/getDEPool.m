function DE_Pool = getDEPool(DE_Pro, N)

%------------------------------- Copyright --------------------------------
% Copyright (c) 2024 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    DE_Pool  = [];
    roulette = DE_Pro / sum(DE_Pro);
    for i = 1 : N
        r = rand();
        for k = 1 : length(DE_Pro)
            if r <= sum(roulette(1:k))
                DE_Pool(i) = k;
                break;
            end
        end
    end
end