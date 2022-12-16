clear all
close all
% pkg load image



% corresponde as 75 imagens
i =74;


for n=0:i

  local = sprintf("IMG_202210_%d.png",n);
  path = sprintf('img\\%s',local);

  im = imread(path);
  img_peq = uint8(zeros(1,1,3));%uint8(zeros(size(im,1),size(im,2),size(im,3) ));
  %figure(n+1)
  %imshow(im{n+1})

  l = 1;
  % an_i = 0;
% an_j = 0;

% --REDU��O DE 1/3 OU DE 66%
% for i = 1:1.5:size(im,1)
%     c = 1;
%     for j = 1:1.5:size(im,2)
%         if floor(i) != an_i %necess�rio ter ABS
%           if floor(j) != an_j % s� podera ser atribuido se J for diferente
%             img_peq(l,c,:) = im(floor(i),floor(j),:);
%             c+=1;
%           endif
%         else
%           break; % se i for igual, sair do loop
%         endif


%         an_j = floor(j);
%     end
%     if floor(i) != an_i % s� podera ser atribuido se I for diferente
%       l+=1;
%     endif
%     an_i = floor(i);
% end

% --REDU��O DE 1/4 OU 75%
for i = 1:2:size(im,1)
  c = 1;
  for j = 1:2:size(im,2)

          img_peq(l,c,:) = im(i,j,:);
          c+=1;
  end
    l+=1;
end

% figure('name', 'imagem reduzida')
% imshow(img_peq)
% tamanho = size(img_peq)
progresso = n+1
de = 75



  string = sprintf('C:\\Users\\Nikolaos\\Documents\\TADS_2021_2\\2022.2\\TAD0018 - PROCESSAMENTO DIGITAL DE IMAGENS\\project\\imgPost_reduzida\\image_reduct%d.png',n);
  imwrite(img_peq, string);
endfor



