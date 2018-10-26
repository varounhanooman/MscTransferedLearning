num_time_step = 100;            %number of time steps
x_axis= 1:num_time_step;        %creating values for x-axis on plot
z = zeros(num_time_step, 1) ;   %initialize vector z of hidden values with zeros
x = zeros(num_time_step, 1) ;   %initialize vector x of measured values with zeroes
z(1) = 1;                       %z_i at time i=1 equal zero
A = 0.9;                        %super critical scaling parameter chosen value = 0.9 such that A decays to 0 stably
H = 1.3;                        %non-critical scaling of the observed/mesaured hidden value
sig_rand = 0.1;                             %sigma value to be used for sigma x (none hard coded since used in multiple places)
sigma_x = normrnd(0,(sig_rand)^2);          %choose sigma_x from a normal distribution of mean zero and with variance of sig_rand
x(1) = normrnd(H*z(1), (sigma_x)^2);        %perform observation model on hidden value
for i=1:num_time_step-1                     %Do this num_time_step times
    sigma_z = normrnd(0,1);                 %choose new sigma_z from a normal distribution of mean zero and with variance 1
    z(i+1) = normrnd(A*z(i), (sigma_z)^2);  %perform state evolution on hidden value (equation 4)
    sigma_x = normrnd(0,sig_rand);          %choose new sigma_x from a normal distribution of mean zero and with variance sig_rand
    x(i+1) = normrnd(H*z(i+1), (sigma_x)^2);%observe hidden value using observational model (equation 3)
end

figure
plot(x_axis,z, '--bo')
title('Z and X'), xlabel('time step'), ylabel('value'), 
hold on
plot(x_axis,x, ':rs')
legend('hidden value', 'measurement')
hold off
