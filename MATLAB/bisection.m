%--------------------------------------------------
% MATLAB code for Bisection Method to 
% determine the roots of the given equation 
% provided a guess within which the roots must lie.
%--------------------------------------------------

a=input('Enter the function with right side equal to zero:','s');
f=inline(a);
xl= input('Enter the first value of guess interval:');
xu= input('Enter the end value of guess interval:');
tol= input('Enter the allowed error:');

if f(xl)*f(xu)<0

else
    fprintf('The guess is incorrect! Enter the new guesses\n');
    xl=input('Enter the first value of guess interval again:\n') ;
    xu=input('Enter the end value of guess interval again:\n');
end
 
for i=2:100
	xr=(xu+xl)/2;
	if f(xu)*f(xr)<0
		xl=xr;
	else
		xu=xr;
	end

	xnew(1)=0;
	xnew(i)=xr;

	if abs((xnew(i)-xnew(i-1))/xnew(i))<tol;
		break;
	end
end

str = ['The required root of the equation is: ', num2str(xr), '']