X=input('Inserta el nombre de la matriz de la cual quieres calcular el estadístico ANOVA ');
[valores,grupos]=size(X);
mediagrupos=sum(X)./valores;
diferenciasg=X-mediagrupos;
diferencias_cuadradog=diferenciasg.^2;
SCE=sum(sum(diferencias_cuadradog));
N=numel(X);
mediatotal=(sum(sum(X)))./N;
diferenciast=X-mediatotal;
diferencias_cuadradot=diferenciast.^2;
SCT=sum(sum(diferencias_cuadradot));
SCTr=SCT-SCE;
GLTr=grupos-1;
GLE=N-grupos;
MSCTr=SCTr./GLTr;
MSCE=SCE./GLE;
F=MSCTr./MSCE