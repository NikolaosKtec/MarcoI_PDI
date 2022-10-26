clear all
close all
% pkg load image
im = {};
canal_g = 0;

%atual 0-10, proximo n=20
i = 10;


for n=1:i

  local = sprintf("IMG_202210_%d.png",n);
  path = sprintf('img\\%s',local);

  im{n+1} = imread(path);
  %figure(n+1)
  %imshow(im{n+1})

  imageSaved = uint8(zeros(size(im{n+1},1),size(im{n+1},2)));


  % filtro de mediana
  list = [];
  mediana = 0;

  for i = 2:(size(im{n+1},1)-1)
    for j = 2:(size(im{n+1},2)-1)


      % vizinhos 3x3
    list(1) = im{n+1}( i-1 , j-1 );
    list(2) = im{n+1}( i-1 , j+1 );

    list(3) = im{n+1}( i-1 , j );
    list(4) = im{n+1}( i+1 , j );

    list(5) = im{n+1}( i , j-1 );
    list(6) = im{n+1}( i , j+1 );

    list(7) = im{n+1}( i+1 , j+1 );
    list(8) = im{n+1}( i+1 , j-1 );

      mediana = round(median(list));

      imageSaved(i,j) = mediana;

      list = [];
    endfor
  endfor
  string = sprintf('C:\\Users\\Nikolaos\\Documents\\TADS_2021_2\\2022.2\\TAD0018 - PROCESSAMENTO DIGITAL DE IMAGENS\\project\\imgPost\\mask_image_%d.png',n);
  imwrite(imageSaved, string);
endfor

