function I = eval_quad(nodes, weights, f)
% Evaluate integral value using nodes and weights with given function
I =sum(f(nodes).*weights);