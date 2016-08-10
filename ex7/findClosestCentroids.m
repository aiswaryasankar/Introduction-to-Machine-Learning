function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
X;
centroids;
% I need to compute the distance from each point in X to each of the centroids.  This would be 2 nested loops.  Then I find the min of the centroid calculations and set the index of this to the first value in idx.

ids = []
for i=1:size(X,1),
	distance = [];
	for j=1:size(centroids,1),
		% dist = sum((X(i) - centroids(j)) .** 2) ** 0.5
		rowX = X(i,:);
		rowCentroids = centroids(j,:);
		dist = norm(rowX-rowCentroids, 2);
		distance = [distance; dist];
	end;
	[x ix] = min(distance');
	ids = [ids; ix];
end;

idx = ids;

% =============================================================

end

