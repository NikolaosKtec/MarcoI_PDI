clear all
close all

pkg load image
img_doenca_1_a = imread('imgPost_remover_fundo\image_clean73.png');
img_doenca_1_b = imread('imgPost_remover_fundo\image_clean74.png');

img_saudavel_1 = imread('imgPost_remover_fundo\image_clean68.png');
% im_selec
% matriz circular 9x9
 img_res = point_circular_9(img_doenca_1_a);

  figure('name', 'img_doenca_1_a');
 imshow(img_doenca_1_a);

 figure('name', 'img rspo');
 imshow(img_res);

