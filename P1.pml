/* 
Stats on memory usage (in Megabytes):
 1550.000	equivalent memory usage for states (stored*(State-vector + overhead))
  597.089	actual memory usage for states (compression: 38.52%)
         	state-vector as stored = 49 byte + 28 byte overhead
  128.000	memory used for hash table (-w24)
    0.534	memory used for DFS stack (-m10000)
  725.507	total actual memory usage

*/
#define N 20
int count;
bit switc;
bool flag[N];
int turn;
bit decided;
active[N-1] proctype prisoner()
{
	bit done;
	
	do
	:: decided -> assert(done == 1); break;
	:: d_step{if 
	   :: (switc == 0 && done == 0) -> switc=1;done=1; /* if not done and if switc is 0 then turn 1 */
	   fi}	
	od
}
active proctype mainprisoner(){
	do
	::
	   if
	   ::	(count == N-1) -> decided=1;break; /* if the count is reached declare that all the prisoners have visited the room */
	   :: else d_step{if 
		  :: (switc == 1) -> switc = 0;count = count+1; /* if switch is 0 turn it 1 and increase the count */
		  fi
		  }
	   fi
	od 
}
