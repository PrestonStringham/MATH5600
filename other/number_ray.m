%
min_e = -2
max_e = 3
my_eps=1.0/4.0



plot([0, 0], [0,1], 'k-')
text(0,0,sprintf('0'))
hold on

for e = [min_e:max_e]
    x = 2^e;
    plot ([x,x],[0,1],'b-')
    text(x,-(e-min_e)/16.0-0.05,sprintf('1.00*2^{%d}',e))
    for m= 1:3
        x = (1+m/4.0)*2^e;
        plot ([x,x],[0.3,0.6],'--')
        if e>1
            s='01';
            if m==2
                s='10';
            else
                if m==3
                    s='11';                    
                end
            end
            text(x,0.3,sprintf('1.%s*2^%d',s,e))
        end
    end
end
    
text(10,0.2,sprintf('=(1+eps)*2^3'))
annotation('textarrow',[0.3,0.235],[0.35,0.54],'String','1+eps')

text(11,-0.2,{'bias = 3:', ...
    'E=000 - zero', ...
    'E=001 - exp=-2', ...
    'E=010 - exp=-1', ...
    'E=011 - exp=0',  ...
    'E=100 - exp=1',  ...
    'E=101 - exp=2',  ...
    'E=110 - exp=3',  ...
    'E=111 - infinity/NaN'})

title('positive floating point numbers with 2 bits mantissa, 3 bits exponent')

ylim([-0.5,1])
xlim([-1,16])

hold off