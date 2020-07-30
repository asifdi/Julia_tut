using Plots
m2 = 0.217;
l1 = 3.5;
I2 = 1.158;
lc2 = 0;
v = 0.3142;
a = 0.0628


theta1 = collect(-40:70)*pi/180;
theta2 = collect(-80:90)*pi/180;

cosine1 = cos(theta1[1]);
cosine2 = cos(theta2[1]);
sine2 = sin(theta2[1]);
sine12 = sin(theta1[1]+theta2[1]);
cosine12 = cos(theta1[1]+theta2[1]);
sinecosine12 = sine12*cosine12;

#Torque
torque = (m2*l1*lc2*cosine2 + 2*(m2*lc2^2 + I2))*a + (m2*(l1*lc2*cosine1*sine12 + lc2^2*sinecosine12) + I2*sinecosine12 + m2*l1*lc2*sine2)*(v^2) + m2*lc2*cosine12;

angle1 = theta1[1];
angle2 = theta2[1];
tt2 = [];

#find solution
for i = collect(1:length(theta1))
    for j = collect(1:length(theta2))
        sine12 = sin(theta1[i] + theta2[j]);
        cosine12 = cos(theta1[i]+theta2[j]);
        sinecosine12 = sine12*cosine12;
        cosine1 = cos(theta1[i]);
        cosine2 = cos(theta2[j]);
        sine2 = sin(theta2[j]);
        torque2 = (m2*l1*lc2*cosine2 + 2*(m2*lc2^2 + I2))*a + (m2*(l1*lc2*cosine1*sine12 + lc2^2*sinecosine12) + I2*sinecosine12 + m2*l1*lc2*sine2)*(v^2) + m2*lc2*cosine12;
        tt2 = [tt2 torque2];
        if abs(torque2) > abs(torque);
            torque = torque2;
            angle1 = theta1[i];
            angle2 = theta2[j];
        end
    end
end

#plot the torque curve

k = collect(1:(70+41)*(90+81));
plot(k,tt2)
#xlabel('Time_t')
#ylabel('Torque T_2')
