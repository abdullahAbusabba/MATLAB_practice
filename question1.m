function question1
    % t coordinates and y,x variables
    t=0:0.1:50;
    Y=y1(t);
    X=x1(t);
    % Top plot
    figure('Color','#77AC30','Name','curve-1');%setting figure name and color
    ax1=nexttile;%create first figure axes
    plot(ax1,Y,X,'-o','color','green')
    grid(ax1,'on')
    title(ax1,'Plot 1:y against x')
    xlabel(ax1,"X axes")
    ylabel(ax1,"Y axes")
    legend(ax1,'y,x')
    %saveas(gcf,'curve_1.jpg') uncomment this to save the figure

    % Bottom plot
    figure('Color','yellow','Name','curve-2');%setting figure name and color
    ax2=nexttile;%create second figure axes
    plot(ax2,t,X,'--',t,Y)
    legend(ax2,{'x against t','y against t'})
    grid(ax2,'on')
    title(ax2,'Plot 2:x,t and y,t')
    xlabel(ax2,"X axes")
    ylabel(ax2,"Y axes")
    %saveas(gcf,'curve_2.jpg') uncomment this to save the figure 
    
%functions to set x and y    
end
function x =x1(t)
    
    x= (sqrt(t).*sin(t));
end

 function y =y1(t)
    
    y= (sqrt(t).*cos(t));
end
