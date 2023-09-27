clear all
close all
    M = readlines('dataset3_4.txt');
    %M = readlines('ProvaAccSonMisto.txt');
    for i = 1:M.size()-1
    %for i = 250:580
        line = char(M(i));          
        p = 1;
        while not(isspace(line(p)))
            Ax(i) = str2double(line(1:p));
            p = p+1;
        end
        s = p+1;
        while not(isspace(line(s)))
            Ay(i) = str2double(line(p+1:s));
            s = s+1;
        end
        t = s+1;
        while not(isspace(line(t)))
            Az(i) = str2double(line(s+1:t));
            t = t+1;
        end
        z = t+1;
        while not(z==length(line) | isspace(line(z)))            
            Son(i) = str2double(line(t+1:z));
            if(Son(i)>35)
                Son(i)=35;
            end
            z = z+1;
        end
    end

    figure(1)
    subplot(2,1,1)
    hold on
    plot(Ax, 'r')
    plot(Ay, 'g')
    plot(Az, 'b')
    subplot(2,1,2)
    stairs(Son)







