function [] = problem5(n)
n = (0:1:199); 
x = input('Input function: ');
y = zeros(size(x));
for w =1:length(n)
    if n(w) == 0
        y(w) = -1.5*x(w)+2*x(w+1)-0.5*x(w+2);
    elseif n(w)<=198
        y(w) = 1.5*x(w)-2*x(w-1)+0.5*x(w-1);
    else
        y(w) = 1.5*x(w) - 2*x(w-1)+0.5*x(w-2);
    end
end
plot (n,x,'--r');
hold on;
plot (n,y,'b--');
hold off
xlabel('x axis');
ylabel('y axis');
title('Problem 5 Plot');
legend ('x-axis','y-axis');
end
