int lib(int x) {
  if (x == 0)
     return 0;
  if (x < 0)
     return -1;
  else
     return 1;
}
int client(int x){
  if (x > 0) {
    return lib(x);
  }
  return x;
}
int main()
{
return 0;
}
