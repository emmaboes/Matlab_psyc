total_palabras = 15;
lista_palabras = ones(total_palabras,1);
decaimiento = 0.9;
umbral = 0.3;

T = 10; %esta linea representa el total de tiempos simulados

for t = 1:T 
    decaimiento = decaimiento-0.05;
    for x = 1:total_palabras
        matriz_decaimiento(x,:) = decaimiento.^x';
    end
palabras_recordadas(:,t) = matriz_decaimiento > umbral;

end
Total_recordadas_por_momento = sum(palabras_recordadas);
plot(Total_recordadas_por_momento);
