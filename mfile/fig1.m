%%% codes for producing fig.1 in the following manuscript

% Baghdadi, G., Towhidkhah, F., & Rostami, R. (2018). 
% A mathematical model to mimic the shape of event related desynchronization/synchronization. 
% Journal of Theoretical Biology, 453, 117-124.
%%%


y0 = [0.5; 0.5];yy=[];
dt=0.1;k=1;
% for i=0:dt:50-dt
%     tspan = [i, i+dt];
    landa=-0.2;p=1;
    tspan=[0 60];
    ode = @(t,y) vanderpoldODE(t,y,landa,p);
    [t,y] = ode45(ode, tspan, y0);
%     y0(1)=y(end,1);
%     y0(2)=y(end,2);
%     yy(k,1)=y(end,1);
%     yy(k,2)=y(end,2);
%     k=k+1;
% end
figure;
% t2=0:dt:50-dt;
% Plot of the solution
t2=t;
subplot(3,2,1)
plot(t2,y(:,1))
xlabel('time')
ylabel('Y')
title(' \lambda = -0.2 , p = 1')
% hold on
% figure;
subplot(3,2,2)
plot(y(:,1),y(:,2))
xlabel('Y')
ylabel('X')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    landa=0.2;p=1;
    tspan=[0 60];
    ode = @(t,y) vanderpoldODE(t,y,landa,p);
    [t,y] = ode45(ode, tspan, y0);
%     y0(1)=y(end,1);
%     y0(2)=y(end,2);
%     yy(k,1)=y(end,1);
%     yy(k,2)=y(end,2);
%     k=k+1;
% end
% t2=0:dt:50-dt;
% Plot of the solution
t2=t;
subplot(3,2,3)
plot(t2,y(:,1))
xlabel('time')
ylabel('Y')
title(' \lambda = 0.2 , p = 1')
% hold on
% figure;
subplot(3,2,4)
plot(y(:,1),y(:,2))
xlabel('Y')
ylabel('X')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    landa=0.2;p=2;
    tspan=[0 60];
    ode = @(t,y) vanderpoldODE(t,y,landa,p);
    [t,y] = ode45(ode, tspan, y0);
%     y0(1)=y(end,1);
%     y0(2)=y(end,2);
%     yy(k,1)=y(end,1);
%     yy(k,2)=y(end,2);
%     k=k+1;
% end
% t2=0:dt:50-dt;
% Plot of the solution
t2=t;
subplot(3,2,5)
plot(t2,y(:,1))
xlabel('time')
ylabel('Y')
title(' \lambda = 0.2 , p = 2')
% hold on
% figure;
subplot(3,2,6)
plot(y(:,1),y(:,2))
xlabel('Y')
ylabel('X')
set(gcf,'Color','white')
