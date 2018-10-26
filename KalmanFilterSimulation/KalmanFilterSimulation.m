num_time_step = 100; %number of time steps
x_axis= 1:num_time_step;
z = zeros(num_time_step, 1) ; %initialize vector z
x = zeros(num_time_step, 1) ; %initialize vector x
z(1) = 1; %x_i at time equal zero
A = 0.9; %super critical chosen value
H = 1.3;
sig_rand = 0.1;
sigma_x = normrnd(0,(sig_rand)^2);
x(1) = normrnd(H*z(1), (sigma_x)^2);
for i=1:num_time_step-1
    sigma_z = normrnd(0,1); 
    z(i+1) = normrnd(A*z(i), (sigma_z)^2);
    sigma_x = normrnd(0,sig_rand);
    x(i+1) = normrnd(H*z(i+1), (sigma_x)^2);  
end

figure
plot(x_axis,z, '--bo')
title('Z and X'), xlabel('time step'), ylabel('value'), 
hold on
plot(x_axis,x, ':rs')
legend('hidden value', 'measurement')
hold off