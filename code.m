% karem Atef Mohamedy
% Sec : 2 

V = 120 ;
RL = 1:0.1:250;

for RS=25:25:150
    PL = (V^2)*RL./(RS+RL).^2;
    plot(RL,PL);
    hold on
end 
for RS=25:25:150
    PLmax = (V^2)*RS/(2*RS)^2;
    plot(RS,PLmax,'ro-');
    hold on
    text(RS,PLmax,"  RL="+RS,'FontSize',10);
end
    hold off
    xlabel('RL (Ohms)');
    ylabel('PL (Watts)');
    title('PL Vs. RL at Certain Rs');
    grid on;
    legend('Rs=25','Rs=50','Rs=75','Rs=100','Rs=125','Rs=150','Location','NorthEast');
