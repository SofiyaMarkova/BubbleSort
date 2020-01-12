%Sofiya Markova
%goal of code:
%sort in ascending order an inputted vector using Bubble Sort algorithm 
 
function y = BubbleSort(x)
 
%get length of vector (to know how many numbers there are)
amtNum = length(x);
 
%condition if only 1 element nothing to compare
if amtNum<2
    %sort is just the vector already have
        y = x;
    return;
end
 
 
%scan vector
for i = 1: amtNum-1
    %compare 2 numbers next to eachother to find which greater. go into if
    %statement if 1st>2nd
    if x(i)>x(i+1)
        %change the 2 number places
        
        %save the 1st into moment variable
        saved = x(i);
        %put the 2nd number in place of 1st
        x(i)= x(i+1);
        %put 1st into place of 2nd
        x(i+1) = saved;
    end
    
end
 
%make the new vector as sorted
y = BubbleSort (x(1:amtNum-1));
y = [y x(amtNum)];
 
 
end

