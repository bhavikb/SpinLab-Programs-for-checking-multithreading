#define N 5 

int DOWN = 3;
int RIGHT = 1;
int STOP = 2;
bool goRight = 0;
int last = -1;
int returnVal[N+1];
int count = 1;

proctype visit(){
	int i = _pid;
	last = i;
	if
	:: goRight -> returnVal[_pid] = RIGHT; goto end1
	:: else -> skip;
	fi
	goRight = 1;
	if
	:: (last == i) -> returnVal[_pid] = STOP; goto end1
	:: else -> returnVal[_pid] = DOWN;
	fi
	
	end1:
	count++;
}

init{
	int i = 0;
	atomic{
	do
	:: (i < N) -> run visit(); i++;
	:: (i == N) -> break;
	od
}
count == N;
i=1;
	do
	:: (i < N+1) -> printf("\npid:%u val:%u\n",i,returnVal[i]); i++;
	:: (i == N+1) -> break;
	od

}