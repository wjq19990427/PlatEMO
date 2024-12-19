function [rank, FrontNo, CrowdDis] = NSGA2Sort(population)

%------------------------------- Copyright --------------------------------
% Copyright (c) 2024 BIMK Group. You are free to use the PlatEMO for
% research purposes. All publications which use this platform or any code
% in the platform should acknowledge the use of "PlatEMO" and reference "Ye
% Tian, Ran Cheng, Xingyi Zhang, and Yaochu Jin, PlatEMO: A MATLAB platform
% for evolutionary multi-objective optimization [educational forum], IEEE
% Computational Intelligence Magazine, 2017, 12(4): 73-87".
%--------------------------------------------------------------------------

    FrontNo  = NDSort(population.objs, inf);
    CrowdDis = CrowdingDistance(population.objs, FrontNo);
    [~,rank] = sortrows([FrontNo', -CrowdDis']);
end