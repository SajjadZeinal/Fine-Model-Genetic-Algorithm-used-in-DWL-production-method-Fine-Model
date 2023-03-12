function [ TOTAL_NUMBER_VERT_BLOCK , OIL_PERF , N_OIL_BLOCK , LOWER_OIL , N_LOWER_OIL  ] = DZ_EDIT( x4 , x3 )
%DZ edit
% Oil well Completion
 LOILP_PER = x4-x3;
if  LOILP_PER == 0 
   x4=x3+5; 
   Block_LOILP_PER=5;
   N_LOILP_PER=1; 
elseif LOILP_PER <=5  && LOILP_PER ~= 0
    Block_LOILP_PER=LOILP_PER;
    N_LOILP_PER=1;

elseif LOILP_PER <= 10 && LOILP_PER > 5
    Block_LOILP_PER=LOILP_PER/2;
    N_LOILP_PER=2;

elseif LOILP_PER <= 15 && LOILP_PER > 10
    Block_LOILP_PER=LOILP_PER/3;
    N_LOILP_PER=3;

elseif LOILP_PER <= 20 && LOILP_PER > 15 
    Block_LOILP_PER=LOILP_PER/4;
    N_LOILP_PER=4;

elseif LOILP_PER <= 25 && LOILP_PER > 20
    Block_LOILP_PER=LOILP_PER/5;
    N_LOILP_PER=5;

elseif LOILP_PER <= 30 && LOILP_PER > 25
    Block_LOILP_PER=LOILP_PER/6;
    N_LOILP_PER=6;
    
elseif LOILP_PER <= 35 && LOILP_PER > 30
    Block_LOILP_PER=LOILP_PER/7;
    N_LOILP_PER=7;

elseif LOILP_PER <= 40 && LOILP_PER > 35
    Block_LOILP_PER=LOILP_PER/8;
    N_LOILP_PER=8;
    
elseif LOILP_PER <= 45 && LOILP_PER > 40
    Block_LOILP_PER=LOILP_PER/9;
    N_LOILP_PER=9;
    
elseif LOILP_PER <= 50 && LOILP_PER > 45
    Block_LOILP_PER=LOILP_PER/10;
    N_LOILP_PER=10;
    
end

% below of Oil Well Completion

LOWER_OIL_PER=15050-x4;
 
if LOWER_OIL_PER == 0
   BLOCK_LOWER_OIL_PER=0;
   N_LOWER_OIL_PER=0; 
elseif LOWER_OIL_PER <=5 && LOWER_OIL_PER ~= 0
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER;
    N_LOWER_OIL_PER=1;
elseif LOWER_OIL_PER <=10 && LOWER_OIL_PER > 5
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/2;
    N_LOWER_OIL_PER=2;
    
elseif LOWER_OIL_PER <=15 && LOWER_OIL_PER > 10
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/3;
    N_LOWER_OIL_PER=3;

elseif LOWER_OIL_PER <=20 && LOWER_OIL_PER > 15
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/4;
    N_LOWER_OIL_PER=4;
    
 elseif LOWER_OIL_PER <=25 && LOWER_OIL_PER > 20
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/5;
    N_LOWER_OIL_PER=5;
    
elseif LOWER_OIL_PER <=30 && LOWER_OIL_PER > 25
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/6;
    N_LOWER_OIL_PER=6;
    
elseif LOWER_OIL_PER <=35 && LOWER_OIL_PER > 30
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/7;
    N_LOWER_OIL_PER=7;
    
elseif LOWER_OIL_PER <=40 && LOWER_OIL_PER > 35
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/8;
    N_LOWER_OIL_PER=8;
    
elseif LOWER_OIL_PER <=45 && LOWER_OIL_PER > 40
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/9;
    N_LOWER_OIL_PER=9;
    
elseif LOWER_OIL_PER <=50 && LOWER_OIL_PER > 45
    BLOCK_LOWER_OIL_PER=LOWER_OIL_PER/10;
    N_LOWER_OIL_PER=10;
end
TOTAL_NUMBER_VERT_BLOCK=int2str(100+N_LOILP_PER+N_LOWER_OIL_PER);
OIL_PERF=int2str(Block_LOILP_PER);
N_OIL_BLOCK=int2str(N_LOILP_PER);
LOWER_OIL=int2str(BLOCK_LOWER_OIL_PER);
N_LOWER_OIL=int2str(N_LOILP_PER+N_LOWER_OIL_PER);
end

