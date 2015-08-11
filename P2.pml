/*
Stats on memory usage (in Megabytes):
    0.022	equivalent memory usage for states (stored*(State-vector + overhead))
    0.287	actual memory usage for states
  128.000	memory used for hash table (-w24)
    0.534	memory used for DFS stack (-m10000)
  128.730	total actual memory usage

*/
#define N 5
int count;
bit switc;
bit decided=0;
proctype prisoner()
{
	byte done;
	
	do
	:: decided -> assert(done == 2);break;
	:: d_step{if 
	   :: (switc == 0 && done < 2 ) -> switc=1;done++; /* if not done and if switc is 0 then turn 1 */
	   fi}	
	od
}
proctype mainprisoner(){
	do
	:: (count == 2*(N-1)) -> decided=1;break; /* if the count is reached declare that all the prisoners have visited the room */
	:: d_step{
		  if 
		  :: (switc == 1) -> switc = 0;count = count+1; 
		  fi
		  }
	od 
}
init{
	byte proc;
	if 			/*generating random value for switc variable (0 or 1) */
 	:: skip -> switc = 0; 
	:: skip -> switc = 1;
	fi
	atomic{			/* generating N-1 prisoners and 1 mainprisoner */
		proc = 1;
		do
		:: proc < N -> 
		   run prisoner();
		   proc++;
		:: proc == N ->
		   run mainprisoner();
		   break;
		od
	}
}
