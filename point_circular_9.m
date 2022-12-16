
% a procura de brancos, em contraste a pretos, para remover ruídos pretos OU
% a procura de pretos, em contraste a brancos, para remover ruídos brancos
function matrix = point_circular_9(img_folha)

    for i = 5:size(img_folha,1)-4
        for j = 5:size(img_folha,2)-4
                soma_w = 0;
            if img_folha(i,j)  != 0 && img_folha(i,j,3) <= 140
                % 10 horas
                if img_folha(i-3,j-3,1) <= 128  && img_folha(i-3,j-3,2) <= 137 && img_folha(i-3,j-3,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i-3,j-2,1) <= 128 && img_folha(i-3,j-2,2) <= 137 && img_folha(i-3,j-2,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i-2,j-3,1) <= 128 && img_folha(i-2,j-3,2) <= 137 && img_folha(i-2,j-3,3) <= 134
                    soma_w += 1;
                endif

                % 7 horas
                if img_folha(i+3,j-3,1) <= 128 && img_folha(i+3,j-3,2) <= 137 && img_folha(i+3,j-3,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+2,j-3,1) <= 128 && img_folha(i+2,j-3,2) <= 137 && img_folha(i+2,j-3,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+3,j-2,1) <= 128 && img_folha(i+3,j-2,2) <= 137 && img_folha(i+3,j-2,3) <= 134
                    soma_w += 1;
                endif

                % 1 hora
                if img_folha(i-3,j+3,1) <= 128 && img_folha(i-3,j+3,2) <= 137 && img_folha(i-3,j+3,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i-2,j+3,1) <= 128 && img_folha(i-2,j+3,2) <= 137 && img_folha(i-2,j+3,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i-3,j+2,1) <= 128 && img_folha(i-3,j+2,2) <= 137 && img_folha(i-3,j+2,3) <= 134
                    soma_w += 1;
                endif

                % 5 horas
                if img_folha(i+3,j+3,1) <= 128 && img_folha(i+3,j+3,2) <= 137 && img_folha(i+3,j+3,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+3,j+2,1) <= 128 && img_folha(i+3,j+2,2) <= 137 && img_folha(i+3,j+2,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+2,j+3,1) <= 128 && img_folha(i+2,j+3,2) <= 137 && img_folha(i+2,j+3,3) <= 134
                    soma_w += 1;
                endif

                % CIMA
                if img_folha(i-4,j-1,1) <= 128 && img_folha(i-4,j-1,2) <= 137 && img_folha(i-4,j-1,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i-4,j,1) <= 128 && img_folha(i-4,j,2) <= 137 && img_folha(i-4,j,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i-4,j+1,1) <= 128 && img_folha(i-4,j+1,2) <= 137 && img_folha(i-4,j+1,3) <= 134
                    soma_w += 1;
                endif

                % BAIXO
                if img_folha(i+4,j-1,1) <= 128 && img_folha(i+4,j-1,2) <= 137 && img_folha(i+4,j-1,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+4,j,1) <= 128 && img_folha(i+4,j,2) <= 137 && img_folha(i+4,j,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+4,j+1,1) <= 128 && img_folha(i+4,j+1,2) <= 137 && img_folha(i+4,j+1,3) <= 134
                    soma_w += 1;
                endif

                 % LATERAL e
                 if img_folha(i-1,j-4,1) <= 128 && img_folha(i-1,j-4,2) <= 137 && img_folha(i-1,j-4,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i,j-4,1) <= 128 && img_folha(i,j-4,2) <= 137 && img_folha(i,j-4,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+1,j-4,1) <= 128 && img_folha(i+1,j-4,2) <= 137 && img_folha(i+1,j-4,3) <= 134
                    soma_w += 1;
                endif

                % LATERAL d
                if img_folha(i-1,j+4,1) <= 128 && img_folha(i-1,j+4,2) <= 137 && img_folha(i-1,j+4,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i,j+4,1) <= 128 && img_folha(i,j+4,2) <= 137 && img_folha(i,j+4,3) <= 134
                    soma_w += 1;
                endif
                if img_folha(i+1,j+4,1) <= 128 && img_folha(i+1,j+4,2) <= 137 && img_folha(i+1,j+4,3) <= 134
                    soma_w += 1;
                endif






                if soma_w == 24 % 24 limiar de para buracos na folha
                    matrix(i,j) = 0;
                    matrix(i,j) = 0;
                else
                    matrix(i,j) = 1;
                    matrix(i,j) = 1;

                endif

            endif


        endfor

    endfor
