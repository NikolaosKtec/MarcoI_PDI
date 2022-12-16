clear all
close all
% pkg load image



% corresponde as 75 imagens
i =74;


for n=31:i

    local = sprintf("\image_reduct%d.png",n);
    path = sprintf('imgPost_reduzida\\%s',local);

    im = imread(path);
    img_nova = uint8(zeros(size(im,1),size(im,2),size(im,3)));
    img_bin = logical(zeros(size(im,1),size(im,2)));
    img_bin2 = logical(zeros(size(im,1),size(im,2)));


    for i = 1:size(im,1)
        for j = 1:size(im,2)

            if  im(i,j,1) >=85 && im(i,j,2)>= 115 && im(i,j,3) >= 160
                img_bin(i,j) = 0;
            else
                img_bin(i,j) = 1;
            endif

        endfor

    endfor

    % reduzir ruidos pretos
    bin_post_post = point_10x10_clr(img_bin);

    % imagem sem fundo
    for i = 1:size(im,1)
        for j = 1:size(im,2)-3

            if bin_post_post(i,j)
                img_nova(i,j,:) = im(i,j,:);
            else
                img_nova(i,j,:) = 0;
            end

        end

    end

    progresso = n+1
    de = 75



    string = sprintf('C:\\Users\\Nikolaos\\Documents\\TADS_2021_2\\2022.2\\TAD0018 - PROCESSAMENTO DIGITAL DE IMAGENS\\project\\imgPost_remover_fundo\\image_clean%d.png',n);
    imwrite(img_nova, string);
endfor








