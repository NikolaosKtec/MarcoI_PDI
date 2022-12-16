

 function matrix = point_5x5_clr(img_bin)

    for i = 3:size(img_bin,1)-2
        for j = 3:size(img_bin,2)-2
                soma_w = 0;
            if img_bin(i,j) % == 1
                if img_bin(i-2,j-2)
                    soma_w += 1;
                endif
                if img_bin(i-2,j-1)
                    soma_w += 1;
                endif
                if img_bin(i-2,j)
                    soma_w += 1;
                endif

                if img_bin(i-2,j+1)
                    soma_w += 1;
                endif
                if img_bin(i-2,j+2)
                    soma_w += 1;

                endif
                if img_bin(i-1,j-2)
                    soma_w += 1;
                endif

                if img_bin(i-1,j-1)
                    soma_w += 1;
                endif
                if img_bin(i-1,j)
                    soma_w += 1;
                endif
                if img_bin(i-1,j+1)
                    soma_w += 1;
                endif
                if img_bin(i-1,j+2)
                    soma_w += 1;
                endif
                if img_bin(i,j-2)
                    soma_w += 1;
                endif
                if  img_bin(i,j-1)
                    soma_w += 1;
                endif

                if  img_bin(i,j+1)
                    soma_w += 1;
                endif
                if img_bin(i,j+2)
                    soma_w += 1;
                endif
                if img_bin(i+1,j-2)
                    soma_w += 1;
                endif
                if img_bin(i+1,j-1)
                    soma_w += 1;
                endif
                if img_bin(i+1,j)
                    soma_w += 1;
                endif
                if img_bin(i+1,j+1)
                    soma_w += 1;
                endif
                if img_bin(i+1,j+2)
                    soma_w += 1;
                endif
                if img_bin(i+2,j-2)
                    soma_w += 1;
                endif
                if  img_bin(i+2,j-1)
                    soma_w += 1;
                endif
                if  img_bin(i+2,j)
                    soma_w += 1;
                endif
                if img_bin(i+2,j+1)
                    soma_w += 1;
                endif
                if img_bin(i+2,j+2)
                    soma_w += 1;
                endif

                if soma_w <= 4
                    matrix(i:i+2, j:j+2) = 0;
                    matrix(i-2:i, j-2:j) = 0;
                else
                    matrix(i:i+2, j:j+2) = 1;
                    matrix(i-2:i, j-2:j) = 1;
                endif

            endif


        endfor

    endfor
