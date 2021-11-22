clear % clears the memory
clc % clears the screen

%Task 1: Linear convolution

% x_n = [3 7 2 6 1 3 9];  %input sequence 
% h_n = [2 3 -2 5 3];     %impulse response
% y_n = conv(x_n,h_n);    %gets linear Convolution sum
% 
%dispays y[n]
% disp("Linear Convolution sum, y[n] = ");
% disp(y_n);

%End of Task 1.



%Task 2: Circular convolution

x_n = [3 7 2 6 1 3 9];  % input sequence
h_n = [2 3 -2 5 3];     % impulse response 

disp("Linear: ");

tic                     % take current processor time
y_n = conv(x_n,h_n);    % calculate convolution sum using linear 
toc                     %take current processor time

disp("Circular: ");

tic                     % take current processor time
y_cn = cconv(x_n,h_n);  % calculate convolution sum using circular
toc                     % take current processor time

%newline -> creates 1 newline
disp(newline + "With random array:- " + newline)

x_nr=randn(100000,1);   % array that contains 100k random numbers
h_nr=randn(100000,1);   % array that contains 100k random numbers

disp("Linear: ");

tic                     % take current processor time
y_nr=conv(x_nr,h_nr);   % calculate convolution sum using linear
toc                     % take current processor time

disp("Circular: ");

tic                     % take current processor time
y_cnr=cconv(x_nr,h_nr); % calculate convolution sum using circular
toc                     % take current processor time


%While using small array, the linear convolution seems to faster but
%in case of huge arrays, the circular convolution is a lot more faster.
%End of Task 2. 
