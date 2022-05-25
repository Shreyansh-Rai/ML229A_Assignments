function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
%we will try to plot the data :
posInd=[];
negInd=[];
r = size(y);
r= r(1,1)
for i=1:r,
  if y(i) == 1
    posInd(end+1) = i;
  else
    negInd(end+1) =i;
  endif
endfor

plot(X(posInd,1),X(posInd,2),'k+','LineWidth', 2,'MarkerSize', 7)
plot(X(negInd,1),X(negInd,2),'ko', 'MarkerFaceColor', 'y','MarkerSize', 7)





% =========================================================================



hold off;

end
