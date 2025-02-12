threshold = 0.99;
numeros = rgb2gray(imread("numeros.jpg"));
% Numero que se selecciona
% select = 6;
template = rgb2gray(imread(num2str(select) + ".jpg"));
autocorr = normxcorr2(template, numeros);
hits = numel(find(autocorr > threshold));
disp("Numero de " + num2str(select) + " = " + hits);
