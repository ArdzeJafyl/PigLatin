import java.util.*;
boolean r1 = false;
String vowel = new String("aeiou");

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}

}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	for(int n = 0; n < sWord.length(); n++){
		for(int v = 0; v < vowel.length(); v++){
			if(sWord.charAt(n) == vowel.charAt(v)){
				return n;
			}
		}
	}
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1){
		return sWord + "ay";
	}else if(findFirstVowel(sWord) == 0){
		return sWord + "way";
	}else if(sWord.substring(0,2).equals("qu") == true){
		return sWord.substring(2) + "quay";
	}else{
		return sWord.substring(1) + sWord.charAt(0) + "ay";
	}
}
