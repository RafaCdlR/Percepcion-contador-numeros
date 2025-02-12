trheshold = 0.99;
numeros = rgb2gray(imread("numeros.jpg"));
% numrot = rgb2gray(imread("numerosRotados.jpg"));
% Numero que se selecciona
% select = 6;
template = rgb2gray(imread(num2str(select) + ".jpg"));
autocorr = normxcorr2(template, numeros);
hits = numel(find(autocorr > trheshold));
disp("Numero de " + num2str(select) + " = " + hits);