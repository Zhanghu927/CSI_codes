clear
clc
Mat=xlsread('validation data.xlsx','Sheet1','F2:U315');
figuretitle={'GRA','SHR','CRP','DBF','ENF','EBF'};
markertype={'^','diamond','o','v','square','+'};
colorlist={[221/255 99/255 150/255];[157/255 200/255 56/255];[175/255 159/255 119/255];...
           [112/255 108/255 170/255];[119/255 177/255 161/255];[157/255 200/255 56/255]};
h1=figure;h2=figure;h3=figure;h4=figure;
h5=figure;h6=figure;h7=figure;h8=figure;
h9=figure;h10=figure;h11=figure;h12=figure;

for j=3:14
    Y=Mat(:,j);X=Mat(:,2);
    RMSE(j-2)=sqrt(sum((Y-X).^2)/length(X));
    rRMSE(j-2)=RMSE(j-2)/mean(X);
    [P,S] = polyfit(X, Y, 1);
    yfit = P(1)*X + P(2);
    R2(j-2) = norm(yfit -mean(Y))^2/norm(Y - mean(Y))^2;
    BIAS(j-2)=mean(Y-X);
end

for i=[3:5,1]
    figure(h1)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,4);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('CIre')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h2)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,5);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('MTCI')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h3)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,6);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('TCARI/OSAVI')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h4)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,3);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('CSI')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h5)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,7);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('NDVIre')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h6)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,8);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('RERNDVI')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h7)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,9);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('IRECI')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h8)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,10);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('MCARI')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h9)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,11);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('Macc01')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h10)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,12);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('MND')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h11)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,13);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('DD')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    
    figure(h12)
    hold on
    id=find(Mat(:,1)==i);
    X=Mat(id,2);
    Y=Mat(id,14);
    S=Mat(id,16);
    id1=find(S==1);
    id2=find(S==2);
    id3=find(S==3);
    plot(X(id2),Y(id2),'.','markersize',25,'color',colorlist{i});
    plot(X(id1),Y(id1),'square','markersize',8,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot(X(id3),Y(id3),'v','markersize',7,'markerfacecolor',colorlist{i},'markeredgecolor',colorlist{i});
    plot([0,75],[0,75],':k','linewidth',1.5)
    title('Datt99')
    set(gca,'xlim',[0,75],'xtick',[0:15:75],'fontsize',15)
    set(gca,'ylim',[0,75],'ytick',[0:15:75],'fontsize',15)
    xlabel('Ground-Measured Chl_l_e_a_f')
    ylabel('Estimated Chl_l_e_a_f')
    axis square
    

end

figure(h1)
text(53,15,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(2),100*rRMSE(2),BIAS(2),R2(2)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_CIre']);
figure(h2)
text(5,65,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(3),100*rRMSE(3),BIAS(3),R2(3)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_MTCI']);
figure(h3)
text(53,15,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(4),100*rRMSE(4),BIAS(4),R2(4)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_TO']);
figure(h4)
text(5,65,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(1),100*rRMSE(1),BIAS(1),R2(1)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_CSI']);

figure(h5)
text(53,12,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(5),100*rRMSE(5),BIAS(5),R2(5)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_NDVIrere']);
figure(h6)
text(53,12,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(6),100*rRMSE(6),BIAS(6),R2(6)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_RERNDVI']);
figure(h7)
text(5,65,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(7),100*rRMSE(7),BIAS(7),R2(7)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_IRECI']);
figure(h8)
text(5,63,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(8),100*rRMSE(8),BIAS(8),R2(8)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_MCARI']);

figure(h9)
text(53,15,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(9),100*rRMSE(9),BIAS(9),R2(9)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_Macc01']);
figure(h10)
text(5,65,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(10),100*rRMSE(10),BIAS(10),R2(10)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_MND']);
figure(h11)
text(53,10,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(11),100*rRMSE(12),BIAS(11),R2(11)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_DD']);
figure(h12)
text(53,15,sprintf('RMSE=%.2f\nrRMSE=%.2f%%\nBias=%.2f\nR^2=%.2f',RMSE(12),100*rRMSE(12),BIAS(12),R2(12)),'fontsize',13);
print(gcf,'-djpeg','-r300',['Validationpicture\','ALL','_Datt99']);

% close all

