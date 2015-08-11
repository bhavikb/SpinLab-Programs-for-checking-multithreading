#define N 8
int count;
bit switch;
bool flag[N];
int turn;
active[N-1] proctype prisoner()
{
	bit done;
	
	do
	:: flag[_pid]=true;turn = ((_pid+1) % (N));
	   (flag[(_pid+1)%(N)] || turn == (_pid+1)%(N));
	   if 
	   :: (switch == 0 && done == 0) -> d_step{switch=1;done=1;}
	   fi
	   flag[_pid] = false;	
	od
}
active proctype mainprisoner(){
	do
	:: flag[_pid]=true;turn = ((_pid+1) % (N));
           (flag[(_pid+1)%(N)] || turn == (_pid+1)%(N));
	   if
	   ::	(count == N-1) -> break; 
	   :: else d_step{if 
		  :: (switch == 1) -> switch = 0;count = count+1;
		  fi
		  }
	   fi
           flag[_pid]=false;
	od 
}
