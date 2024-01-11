public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{
  String noDecimalE = e.substring(0, 1) + e.substring(2);
  for(int i = 0; i < noDecimalE.length() - 10; i += 1){
    double num = Double.parseDouble(noDecimalE.substring(i, i + 10));
    if(isPrime(num)){
      System.out.println(noDecimalE.substring(i, i + 10) + " is the first 10 digit prime of e.");
      break;
    }
  }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  //your code here
  int dRoot = (int)Math.sqrt(dNum);
  for(int i = 2; i <= dRoot; i++){
    if((dNum / i) % 1 == 0){
      return false;
    }
  }
  return true;
} 
