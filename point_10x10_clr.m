
% a procura de brancos, em contraste a pretos, para remover ruídos pretos OU
% a procura de pretos, em contraste a brancos, para remover ruídos brancos
function matrix = point_10x10_clr(img_bin)

    for i =6:size(img_bin,1)-5
        for j = 6:size(img_bin,2)-5
                soma_w = 0;
            if img_bin(i,j) % == 1
                %cima
                if img_bin(i-5,j-5)
                    soma_w += 1;
                endif
                if img_bin(i-5,j-4)
                    soma_w += 1;
                endif
                if img_bin(i-5,j-3)
                    soma_w += 1;
                endif
                if img_bin(i-5,j-2)
                    soma_w += 1;
                endif
                if img_bin(i-5,j-1)
                    soma_w += 1;
                endif

                if img_bin(i-5,j)
                    soma_w += 1;
                endif
                if img_bin(i-5,j+1)
                    soma_w += 1;
                endif
                if img_bin(i-5,j+2)
                    soma_w += 1;
                endif
                if img_bin(i-5,j+3)
                    soma_w += 1;
                endif
                if img_bin(i-5,j+4)
                    soma_w += 1;
                endif
                if img_bin(i-5,j+5)
                    soma_w += 1;
                endif
                %baixo
                if img_bin(i+5,j+5)
                    soma_w += 1;
                endif
                if img_bin(i+5,j+4)
                    soma_w += 1;
                endif
                if img_bin(i+5,j+3)
                    soma_w += 1;
                endif
                if img_bin(i+5,j+2)
                    soma_w += 1;
                endif
                if img_bin(i+5,j+1)
                    soma_w += 1;
                endif
                if img_bin(i+5,j)
                    soma_w += 1;
                endif

                % if soma_w > 10
                %     matrix(i:i+5, j:j+5) = img_bin(i:i+5, j:j+5);
                %     matrix(i-5:i, j-5:j) = img_bin(i-5:i, j-5:j);
                %     break;
                % endif

                if img_bin(i+5,j-1)
                    soma_w += 1;
                endif
                if img_bin(i+5,j-2)
                    soma_w += 1;
                endif
                if img_bin(i+5,j-3)
                    soma_w += 1;
                endif
                if img_bin(i+5,j-4)
                    soma_w += 1;
                endif
                if img_bin(i+5,j-5)
                    soma_w += 1;
                endif

                %laterais
                if img_bin(i+4,j+5)
                    soma_w += 1;
                endif
                if img_bin(i+3,j+5)
                    soma_w += 1;
                endif
                if img_bin(i+2,j+5)
                    soma_w += 1;
                endif
                if img_bin(i+1,j+5)
                    soma_w += 1;
                endif
                if img_bin(i,j+5)
                    soma_w += 1;
                endif

                if img_bin(i-4,j+5)
                    soma_w += 1;
                endif
                if img_bin(i-3,j+5)
                    soma_w += 1;
                endif
                if img_bin(i-2,j+5)
                    soma_w += 1;
                endif
                if img_bin(i-1,j+5)
                    soma_w += 1;
                endif

                % if soma_w > 10
                %     matrix(i:i+5, j:j+5) = img_bin(i:i+5, j:j+5);
                %     matrix(i-5:i, j-5:j) = img_bin(i-5:i, j-5:j);
                %     break;
                % endif

                 %laterais
                 if img_bin(i+4,j-5)
                    soma_w += 1;
                endif
                if img_bin(i+3,j-5)
                    soma_w += 1;
                endif
                if img_bin(i+2,j-5)
                    soma_w += 1;
                endif
                if img_bin(i+1,j-5)
                    soma_w += 1;
                endif
                if img_bin(i,j-5)
                    soma_w += 1;
                endif

                if img_bin(i-4,j-5)
                    soma_w += 1;
                endif
                if img_bin(i-3,j-5)
                    soma_w += 1;
                endif
                if img_bin(i-2,j-5)
                    soma_w += 1;
                endif
                if img_bin(i-1,j-5)
                    soma_w += 1;
                endif



                if soma_w <= 9 % 9 limiar de brancos
                    matrix(i:i+5, j:j+5) = 0;
                    matrix(i-5:i, j-5:j) = 0;
                else
                    matrix(i:i+5, j:j+5) = 1;
                    matrix(i-5:i, j-5:j) = 1;

                endif

            endif


        endfor

    endfor
