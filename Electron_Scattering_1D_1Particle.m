time = 0.5;
timesteps = 100;
scatter = 0.5*rand();
C.q_0 = 1.60217653e-19; 
C.m_0 = 9.10938215e-31;             % electron mass
a = C.q_0/C.m_0;
xPosition = zeros(1,timesteps);
velocity = zeros(1,timesteps);

for i = 2:timesteps
    scatter = rand(); 
    
    if scatter < 0.95
        a_actual = a + 0.2;
        velocity(i) = velocity(i-1) + a_actual*time;
    else
        a_actual = 0;
        velocity(i) = 0;
    end
    
    xPosition(i) = xPosition(i-1) + velocity(i)*time;
    
    figure (1)
    pause(0.5);
    postime = subplot(2,1,1);
    plot(xPosition(2:i));
    title(num2str(velocity(i)));
    xlabel("Time");
    ylabel("X Position");
    grid on;
    
    veltime = subplot(2,1,2);
    plot(velocity(2:i));
    xlabel("Time");
    ylabel("Velocity");
    
    
end
