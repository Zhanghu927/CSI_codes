clear
clc

load('Ref_ALL(Swir).mat')
% figure
% hold on
Cablist=[1:100];

k=20;
blue=reshape(Ref_ALL(k,2,:),[100,1]);
green=reshape(Ref_ALL(k,3,:),[100,1]);
red=reshape(Ref_ALL(k,4,:),[100,1]);
re1=reshape(Ref_ALL(k,5,:),[100,1]);
re2=reshape(Ref_ALL(k,6,:),[100,1]);
re3=reshape(Ref_ALL(k,7,:),[100,1]);
nir=reshape(Ref_ALL(k,8,:),[100,1]);

C=[blue/max(blue),green/max(green),red/max(red),re1/max(re1),re2/max(re2),re3/max(re3),nir/max(nir)];
D=[diff(blue/max(blue)),diff(green/max(green)),diff(red/max(red)),diff(re1/max(re1)),diff(re2/max(re2)),diff(re3/max(re3)),diff(nir/max(nir))];
C(71:100,:)=[]; D(71:99,:)=[];

figure
hold on
imagesc(C)
plot([1.5,1.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([2.5,2.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([3.5,3.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([4.5,4.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([5.5,5.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([6.5,6.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
set(gca,'XTick',1:1:7)
set(gca,'xlim',[0.5,7.5])
set(gca,'XTickLabel',{'Blue','Green','Red','RE1','RE2','RE3','NIR'});
% set(gca,'YTickLabel',{'70','60','50','40','30','20','10','0'});
set(gca,'ylim',[0,70],'fontsize',12)
load('mycolor2','purple2yellow_light')
load('mycolor','purple2yellow')
% colormap (purple2yellow)
xlabel('Bands of Sentinel-2 MSI','fontsize',16)
ylabel('Chl_l_e_a_f','fontsize',16)
caxis([0.4 1]);
ylabel(colorbar,'Normalized Reflectance','Fontsize',10);
box on
ax=gca;
ax.BoxStyle = 'full';
axis square
print(gcf,'-djpeg','-r300','RefvsCab_defaultcolor')
%}

figure
imagesc(flipud(D));
hold on
plot([1.5,1.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([2.5,2.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([3.5,3.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([4.5,4.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([5.5,5.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
plot([6.5,6.5],ylim,'--','color',[0.3 0.3 0.3],'linewidth',1);
set(gca,'XTick',1:1:7);
set(gca,'xlim',[0.5,7.5]);
set(gca,'XTickLabel',{'Blue','Green','Red','RE1','RE2','RE3','NIR'});
set(gca,'YTickLabel',{'70','60','50','40','30','20','10','0'});
set(gca,'ylim',[0,70],'fontsize',12);
% colormap jet
colormap (purple2yellow)
xlabel('Bands of Sentinel-2 MSI','fontsize',16)
ylabel('Chl_l_e_a_f','fontsize',16)
caxis([-0.1 0.01]);
ylabel(colorbar,'Derivative of Normalized Reflectance','Fontsize',10);
box on
ax=gca;
ax.BoxStyle = 'full';
axis square
text(0.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,1)),max(D(:,1))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);
text(1.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,2)),max(D(:,2))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);
text(2.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,3)),max(D(:,3))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);
text(3.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,4)),max(D(:,4))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);
text(4.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,5)),max(D(:,5))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);
text(5.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,7)),max(D(:,6))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);
text(6.6,10,sprintf('   Min:\n%.4f\n   Max:\n%.4f',min(D(:,7)),max(D(:,7))),'fontsize',9,'FontWeight','bold','color',[0.2 0.2 0.2]);


print(gcf,'-djpeg','-r300','difRefvsCab')
%}