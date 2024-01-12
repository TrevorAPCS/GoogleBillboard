public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{
  String noDecimalE = e.substring(0, 1) + e.substring(2);
  for(int i = 0; i < noDecimalE.length() - 10; i += 1){
    double num = Double.parseDouble(noDecimalE.substring(i, i + 10));
    if(isPrime(num)){
      System.out.println("The answer to the first question is: " + noDecimalE.substring(i, i + 10));
      break;
    }
  }
  int secondAnsPos = findAddNumber(49, 5, noDecimalE);
  if(secondAnsPos != -1){
    System.out.println("The answer to the second question is: " + noDecimalE.substring(secondAnsPos, secondAnsPos + 10));
  }
  else{
    System.out.println("error");
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
//returns place on noDecimalE
public int findAddNumber(int sum, int time, String num){
  int numTimes = 1;
  for(int i = 0; i < num.length() - 9; i++){
    int s = 0;
    for(int f = 0; f < 10; f++){
      s += Integer.parseInt(num.substring(i + f, i + f+ 1));
    }
    if(s == sum && numTimes == time){
      return i;
    }
    else if(s == sum){
      numTimes++;
    }
  }
  return -1;
}
