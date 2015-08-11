init{
int count = 20;
do
:: true -> count++;
:: (count > 19) -> break;
od
}
